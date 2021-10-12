# Batch Jobs

### Submitting jobs using batch scripts

{% hint style="info" %}
If you'd prefer to see the following instructions in a video, we have a [tutorial on batch job submission on Oscar](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0bb329f4-3208-496f-8fe8-ad0f012949d7).
{% endhint %}

To run a batch job on Oscar, you first have to write a script that describes what resources you need and how your program will run. Some example batch scripts are available in your home directory on Oscar, in the directory:

```bash
~/batch_scripts
```

A batch script starts by specifying the `bash` shell as its interpreter with the line:

```bash
#!/bin/bash
```

By default, a batch job will reserve 1 core and 2.8GB of memory per core for your job. You can customize the amount of resources allocated for your job by explicitly requesting them in your batch script with a series of lines starting with `#SBATCH`, e.g.,

```bash
#SBATCH -n 4
#SBATCH --mem=16G
#SBATCH -t 1:00:00
```

The above lines request 4 cores (`-n`), 16GB of memory **per node** (`--mem`), and one hour of runtime (`-t`). After you have described the resources you want allocated for the job, you then give the commands that you want to be executed.

{% hint style="warning" %}
All of the `#SBATCH` instructions in your batch script must appear **before the commands** you want to run.
{% endhint %}

Once you have your batch script, you can submit a batch job to the queue using the `sbatch` command:

```bash
sbatch <jobscript>
```

### Submitting jobs from the command line

As an alternative to requesting resources within your batch script, it is possible to define the resources requested as command-line options to `sbatch`. For example, the command below requests 4 cores (`-n`), 16GB of memory **per node** (`--mem`), and one hour of runtime (`-t`) to run the job defined in the batch script.

```bash
sbatch -n 4 -t 1:00:00 --mem=16G <jobscript>
```

Note that command-line options passed to `sbatch` will override the resources specified in the script, so this is a handy way to reuse an existing batch script when you just want to change a few of the resource values.

### Output from batch jobs

The `sbatch` command will return a number, which is your **Job ID**. You can view the output of your job in the file `slurm-<jobid>.out` in the directory where you invoked the `sbatch` command. For instance, you can view the last 10 lines of output with:

```bash
tail -10 slurm-<jobid>.out
```

Alternatively, you can mention the file names where you want to dump the standard output and errors using the `-o` and `-e` flags. You can use `%j` within the output/error filenames to add the id of the job. If you would like to change your output file to be MyOutput-\<job-id>, you can add the following line to your batch job:

```bash
#SBATCH -o my-output-%j.out
```

### sbatch command options

A full description of all of the options for`sbatch` can be found [online ](https://slurm.schedmd.com/sbatch.html)or by using the following command on Oscar:

```bash
$ man sbatch
```

The table below summarizes some of the more useful options for`sbatch` .

| option         | purpose                                                                                                                                                                                                                                                                                                                 |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `-J`           | Specify the job name that will be displayed when when listing the job                                                                                                                                                                                                                                                   |
| `-n`           | Number of tasks (= number of cores, if "--cpus-per-task" or "-c" option is not mentioned)                                                                                                                                                                                                                               |
| `-c`           | Number of CPUs or cores per task (on the same node)                                                                                                                                                                                                                                                                     |
| `-N`           | Number of nodes                                                                                                                                                                                                                                                                                                         |
| `-t`           | Runtime, as HH:MM:SS                                                                                                                                                                                                                                                                                                    |
| `--mem=`       | Requested memory per node                                                                                                                                                                                                                                                                                               |
| `-p`           | Request a specific partition                                                                                                                                                                                                                                                                                            |
| `-o`           | Filename for standard output from the job                                                                                                                                                                                                                                                                               |
| `-e`           | Filename for standard error from the job                                                                                                                                                                                                                                                                                |
| `-C`           | <p>Add a feature constraint (a tag that describes a type of node). <br>Note: you can view the available features on Oscar with the <code>nodes</code>command or <code>sinfo -o "%20N %10c %10m %25f %10G "</code></p><p>You can also select multiple feature constraints using '|', i.e. #SBATCH -C quadrortx|intel</p> |
| `--mail-type=` | Specify the events that you should be notified of by email: BEGIN, END, FAIL, REQUEUE, and ALL                                                                                                                                                                                                                          |
| `--mail-user=` | Email ID where you should be notified                                                                                                                                                                                                                                                                                   |

### Passing environment variables to a batch job

When a user logs into Oscar, there are pre-set environment variables such as HOME, which are the user's login environment variables. A user may modify an existing enviornmet variable, or add a new environment variable. So when a user submits a slurm batch job, the user's current environment variables may differ from the user's login environment. By default, a user's current environment variables, instead of the user's login environment variables, are accessible to the user's batch jobs on Oscar.

To modify or add an environment variable, run the following command:

* run the following command in your shell

```bash
export my_variable=my_value
```

* or have the following line in your batch script

```bash
#SBATCH --export=my_variable=my_value
```

After the step above to modify or add an environment variable, your batch job can access the environment variable _my_variable_ whose value is _my_value_.

To export more than one environment variables, just list all the name=value pairs separated by commas:

```bash
#SBATCH --export=my_variable1=my_value1,my_variable2=my_value2,my_variable3=my_value3
```

Here is an **example** that a batch script loops over an input file and submits a job for each directory in the input file, where a directory is passed to a batch job for processing.

The input file test.txt has multiple lines where each line is a directory:

```bash
/users/yliu385/data/yliu385/Test/
/users/yliu385/data/yliu385/Test/pip
/users/yliu385/data/yliu385
```

The loop.sh script reads each line (directory) from the input file and passes the directory as an environment variable to a batch job:

```bash
#!/bin/bash

if [ "$#" -ne 1 ] || ! [ -f "$1" ]; then
    echo "Usage: $0 FILE"
    exit 1
fi

while IFS= read -r line; do
   sbatch --export=directory=$line test.job 
done < $1
```

The test.job is a job script, which runs the test.sh to process the directory passed as an environment variable:

```bash
#!/bin/sh

#SBATCH -N 1
#SBATCH -n 1

./test.sh $directory
```

The test.sh is a bash script which simply echoes the directory:

```bash
#!/bin/bash

echo "$0 argument: $1"
```

If you run `./loop.sh`, then three jobs are submitted. Each job generates an output like the following:

```bash
/users/yliu385/data/yliu385/Test/

./test.sh argument: /users/yliu385/data/yliu385/Test/
```

### Using variables to set slurm job name, output filename, and error filename

Variables can be passed at the sbatch command line to set the job name, output and error file names, as shown in the following example:

```bash
t=`date +"%Y-%m-%d"`
sbatch --job-name=test.$t --output=test.out.$t --error=test.err.$t test.job
```
