---
description: >-
  This page describes how to run large language models (LLMs) directly on Oscar
  nodes using Ollama.
---

# Ollama

## LLMs Hosted by CCV

CCV hosts several dozen public, open-weight LLMs on Oscar. This includes Llama 4, DeepSeek-r1, Mistral, and Gemma3. You can see the complete list in the Appendix section below.&#x20;

We first begin by opening a terminal and connecting to Oscar. This can be done using Open OnDemand, a terminal application on your local machine, or PuTTY if you're on a Windows machine.&#x20;

Once we have a terminal session on Oscar, we need to set an environment variable that tells Ollama where to look for the CCV-hosted models. **This only needs to be done once**, and you can do so using the commands below.

```bash
echo 'export OLLAMA_MODELS=/oscar/data/shared/ollama_models' >> ~/.bashrc

source ~/.bashrc
```

## Requesting a GPU Node

LLMs are particularly well suited to running on GPUs, so we begin by requesting a GPU node on Oscar using the following `interact` command, which requests 4 CPU cores, 32 GB of memory, and 1 GPU for 1 hour.&#x20;

```bash
interact -n 4 -m 32g -q gpu -g 1 -t 1:00:00
```

Note that depending on the particular LLM, you may want additional resources (e.g., more CPU cores, memory, or GPUs). The above example should be good for most models.



## Starting an Ollama Server

There are several ways to run large language models directly on Oscar. One particularly straightforward and flexible approach is to use [the Ollama framework](https://ollama.com/), which is installed as a module on Oscar.&#x20;

Once we get our job allocated and we are on a GPU node, we must next load the `ollama` module.

```bash
module load ollama
```

Because the Ollama framework operates using a client/server architecture, we must now launch the server component of Ollama. This is done using the command below.

```bash
ollama serve
```

After running the command above, we will see a stream of output; this is the indication that the Ollama server has started.&#x20;

## Running an LLM Interactively with Ollama

Now that we have the Ollama server running, we can use it to launch LLMs on our GPU node. To do so, we must first _**start**_ _**a new terminal session**_ and use it to connect to our GPU node. Note that our original terminal session that we started above needs to continue running; that session is responsible for running the Ollama server. We are going to use a new terminal session to start the client.  If you are using an Open OnDemand Desktop session, you can right-click on the `Terminal` icon at the bottom of the screen, and select `New Window`. Similarly, if you are connecting via your local machine's terminal application, you would start a new window. And the same is true if you are using PuTTY on Windows.

Once we have a new terminal started, run the `myq` command to see the hostname of our running Ollama server; it will be under the `NODES` heading and look something like `gpuXXXX`. We can connect to our GPU node from the login node by running the following command, where `XXXX` is an integer greater than `1000`.

```bash
ssh gpuXXXX            # replace XXXX with your GPU node's number
```

### Starting an Interactive Chat

Once we have connected to our GPU node, we are nearly ready to start our LLM running. We first need to load the `ollama` module again, which we do using the command below.&#x20;

```bash
module load ollama
```

We can now run an interactive chat session with the `llama3.2` model using the command below. Note that it may take a few seconds for the chat interface to start.

```bash
ollama run llama3.2
```

The above command will take us into an interactive chat session with `llama3.2` . This should be apparent when our command prompt changes from the usual Linux command prompt into a `>>>` prompt.&#x20;

You can now enter queries directly into the prompt. For example you could ask the following.

```
How would I write a function to compute Fibonacci numbers in Rust?
```

Whenever we are finished with our chat session, we can exit the chat by typing `/bye`

### Loading Specific Versions of a Model

Suppose that instead of running the default version of a model in Ollama, we wanted a particular version. For example, the default for `gemma2` is the `9b` version, which has roughly 9-billion parameters. If we wanted to launch the larger `27b` model of `gemma2`, we could do so using the command below.

```bash
ollama run gemma2:27b
```

## Running Ollama Models via Python

If we would prefer to interact with Ollama models via Python, we can do so using the `ollama` package in Python. This is useful, for example, if we want to benchmark models against one another or other long-running tasks.

This section assumes we have already started the Ollama server described in the beginning of this page. If that is true, we can start a new terminal as we did before, and then create a Python virtual environment using the following commands.

```bash
mkdir -p ~/projects/python_ollama_test
cd ~/projects/python_ollama_test
python -m venv venv
```

We can then activate our newly created virtual environment and install the Ollama Python package using the following commands.

```bash
source venv/bin/activate
pip install ollama
```

### Calling Ollama from Python Script&#x20;

Now, let's create a Python script that will compare the output of three models on a few questions. Create a file called `main.py` inside our `~/projects/python_ollama_test` directory and paste the following text into that file.&#x20;

```python
import ollama

def print_model_response(model, query):
    response = ollama.chat(model=model, messages=[
        {
            'role': 'user',
            'content': query,
        },
    ])

    print(response['message']['content'])

if __name__ == '__main__':
    models = ['llama3.1', 'llama3.2', 'gemma2']
    queries =['Write a function to compute Fibonacci numbers using iteration in Rust.', 
              'What is the cube root of 1860867?', 
              'What is the origin of Unix epoch time?',
              'Are AI bots going to turn humans into paperclips? Yes or no?',
              'Question: what kind of bear is best?']

    for model in models:
        for query in queries:
            print(f"Here is the output from: {model.upper()}")
            print_model_response(model,query)

```

Save the file and close your favorite text editor—hopefully it's Vim :slight\_smile:.

We can now run the script and compare the results of `llama3.1`, `llama3.2`, and `gemma2`using the command below.

```bash
python main.py
```

## Notes Regarding Performance

As mentioned above, LLMs are very well suited to running on GPUs because of their extreme parallelism. LLMs are also just very resource-hungry in general. Some of the LLMs hosted on Oscar are too large to fit into the VRAM of a single GPU. Therefore, if you attempt to launch one of the largest LLMs (e.g., `llama3.1:405b`), the Ollama server will split the model between the CPU and the GPU. This will generally lead to poor performance. Thus, if you need to load an especially large LLM, we recommend requesting multiple GPUs. The Ollama server will handle splitting the model weights across the multiple GPUs automatically.&#x20;



## Appendix&#x20;

Below is a list of all the models that CCV currently hosts on Oscar. We will add to this list over time, and if there are models you would like to request, please let us know by emailing `support@ccv.brown.edu` . Please note that models are always being added, so the list below might be slightly out-of-date at any given time. The best way to see the models CCV hosts is to use the `ollama list` command—assuming you have started an Ollama server, and set the `OLLAMA_MODELS`  environment variable as described above.



<table><thead><tr><th width="354">Model Name</th><th>Version Tag</th></tr></thead><tbody><tr><td>codellama</td><td>13b</td></tr><tr><td>codellama</td><td>34b</td></tr><tr><td>codellama</td><td>70b</td></tr><tr><td>codellama</td><td>7b</td></tr><tr><td>codellama</td><td>latest</td></tr><tr><td>codestral</td><td>22b</td></tr><tr><td>codestral</td><td>latest</td></tr><tr><td>deepseek-coder-v2</td><td>16b</td></tr><tr><td>deepseek-coder-v2</td><td>236b</td></tr><tr><td>deepseek-coder-v2</td><td>latest</td></tr><tr><td>gemma2</td><td>27b</td></tr><tr><td>gemma2</td><td>2b</td></tr><tr><td>gemma2</td><td>9b</td></tr><tr><td>gemma2</td><td>latest</td></tr><tr><td>llama2-uncensored</td><td>latest</td></tr><tr><td>llama3.1</td><td>405b</td></tr><tr><td>llama3.1</td><td>70b</td></tr><tr><td>llama3.1</td><td>8b</td></tr><tr><td>llama3.1</td><td>latest</td></tr><tr><td>llama3.2</td><td>1b</td></tr><tr><td>llama3.2</td><td>3b</td></tr><tr><td>llama3.2</td><td>latest</td></tr><tr><td>llama3.2-vision</td><td>11b</td></tr><tr><td>llama3.2-vision</td><td>90b</td></tr><tr><td>llama3.3</td><td>70b</td></tr><tr><td>llama3-chatqa</td><td>70b</td></tr><tr><td>llama3-chatqa</td><td>8b</td></tr><tr><td>llava</td><td>13b</td></tr><tr><td>llava</td><td>7b</td></tr><tr><td>llava</td><td>latest</td></tr><tr><td>mistral</td><td>7b</td></tr><tr><td>mistral</td><td>latest</td></tr><tr><td>mistral-nemo</td><td>latest</td></tr><tr><td>mistral-small</td><td>22b</td></tr><tr><td>mixtral</td><td>latest</td></tr><tr><td>moondream</td><td>latest</td></tr><tr><td>neural-chat</td><td>latest</td></tr><tr><td>orca2</td><td>13b</td></tr><tr><td>orca2</td><td>7n</td></tr><tr><td>orca-mini</td><td>13b</td></tr><tr><td>orca-mini</td><td>70b</td></tr><tr><td>orca-mini</td><td>7b</td></tr><tr><td>phi3</td><td>latest</td></tr><tr><td>phi3</td><td>medium</td></tr><tr><td>qwen2.5-coder</td><td>32b</td></tr><tr><td>qwen2.5-coder</td><td>14b</td></tr><tr><td>qwen2.5-coder</td><td>7b</td></tr><tr><td>qwen2.5-coder</td><td>3b</td></tr><tr><td>solar</td><td>latest</td></tr><tr><td>starcoder</td><td>latest</td></tr><tr><td>starcoder2</td><td>15b</td></tr><tr><td>starcoder2</td><td>3b</td></tr><tr><td>starcoder2</td><td>7b</td></tr><tr><td>starling-lm</td><td>latest</td></tr><tr><td>vicuna</td><td>latest</td></tr><tr><td>wizardlm2</td><td>latest</td></tr></tbody></table>

