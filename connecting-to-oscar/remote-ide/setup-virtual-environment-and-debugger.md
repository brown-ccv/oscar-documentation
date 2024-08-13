# Setup virtual environment and debugger

1. If you have an existing virtual environment, proceed to step 2. Otherwise, to create a new virtual environment:

```
$ python3 -m venv my_env
$ source my_env/bin/activate
#Install packages manually or from requirements.txt file
$ pip install -r requirements.txt
```

2\. Search for `Python.VenvPath` as shown in the picture below:

![Select your virtual environment ](<../../.gitbook/assets/Screen Shot 2022-02-09 at 9.08.40 AM.png>)

3\. VSCode expects you to have multiple virtual environments for each of your different python projects, and it expects you to put them all in the same directory. Pointing to the parent directory lets it scan and find all expected virtual environments, and then you can easily toggle between them in interface.&#x20;

![](<../../.gitbook/assets/Screen Shot 2022-02-09 at 9.12.41 AM.png>)

4\. Once you have the virtual environment selected, the debugging capabilities should work.

![](<../../.gitbook/assets/Screen Shot 2022-02-09 at 9.26.35 AM.png>)

