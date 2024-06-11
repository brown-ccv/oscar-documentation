# DMTCP

[Distributed Multithreaded checkpointing](https://dmtcp.sourceforge.io/) (DMTCP) checkpoints a running program on Linux with no modifications to the program or OS. It allows to restart running the program from a checkpoint.&#x20;

## Modules

To access dmtcp, load a dmtcp module. For example:

`module load dmtcp/3.0.0`

## Example Programs

Here's a dummy example prints increasing integers, every 2 seconds. Copy this to a text file on Oscar and name it dmtcp\_serial.c

<pre class="language-c"><code class="lang-c"><strong>#include&#x3C;stdio.h>
</strong>#include&#x3C;unistd.h>

int main(int argc, char* argv[])
{
    int count = 1;
    while (1)
    {
        printf(" %2d\n",count++);
        fflush(stdout);
        sleep(2)
    }
    return 0;
}
</code></pre>

Compile this program by running

```bash
gcc dmtcp_serial.c -o dmtcp_serial
```

You should have the files in your directory now:

* dmtcp\_serial
* dmtcp\_serial.c

## Basic Usage

### Launch a Program

The `dmtcp_launch` command launches a program, and automatically checkpoints the program. To specify the interval (seconds) for checkpoints, add the "`-i num_seconds`" option to the `dmtcp_lauch` command.&#x20;

**Example:** the following command launches the program `dmtcp_serial` and checkpoints every 8 seconds.

```
$port=$(shuf -i 40000-60000 -n 1)
$dmtcp_launch -p$port -i 8 ./dmtcp_serial  
  1
  2
  3
  4
  5
  6
  7
  8
  9
 10
^C
[yliu385@node1317 interact]$ ll
total 2761
-rw------- 1 yliu385 ccvstaff 2786466 May 18 11:18 ckpt_dmtcp_serial_24f183c2194a7dc4-40000-42af86bb59385.dmtcp
lrwxrwxrwx 1 yliu385 ccvstaff      60 May 18 11:18 dmtcp_restart_script.sh -> dmtcp_restart_script_24f183c2194a7dc4-40000-42af82ef922a7.sh
-rwxr--r-- 1 yliu385 ccvstaff   12533 May 18 11:18 dmtcp_restart_script_24f183c2194a7dc4-40000-42af82ef922a7.sh
-rwxr-xr-x 1 yliu385 ccvstaff    8512 May 18 08:36 dmtcp_serial
```

As shown in the example above, a checkpoint file (`ckpt_dmtcp_serial_24f183c2194a7dc4-40000-42af86bb59385.dmtcpp`) is created, and can be used to restart the program

### Restart from a checkpoint

The `dmtcp_resart` command restarts a program from a checkpoint, and also automatically checkpoints the program. To specify the interval (seconds) for checkpoints, add the "`-i num_seconds`" option to the `dmtcp_restart` command.&#x20;

**Example:** the following command restarts the `dmtcp_serial` program from a checkpoint, and checkpoints every 12 seconds

```
$port=$(shuf -i 40000-60000 -n 1)
$dmtcp_restart -p $port -i 12 ckpt_dmtcp_serial_24f183c2194a7dc4-40000-42af86bb59385.dmtcp 
  9
 10
 11
 12
 13
 14
 15
^C
[yliu385@node1317 interact]$ dmtcp_restart -p $port -i 12 ckpt_dmtcp_serial_24f183c2194a7dc4-40000-42af86bb59385.dmtcp 
 15
 16
 17
^C

```

## Batch Jobs

It is desirable goal that single job script can&#x20;

* launch a program if there is checkpoints, or
* automatically restarts from a checkpoint if there is one or more checkpoints

The job script `dmtcp_serial_job.sh` below is an example which shows how to achieve the goal:

* If there is no checkpoint in the current directory, launch the program `dmtcp_serial`&#x20;
* If one or more checkpoints exist in the current directory, restart the program `dmtcp_serial` from the latest checkpoint

```bash
 #!/bin/bash

#SBATCH -n 1
#SBATCH -t 5:00
#SBATCH -J dmtcp_serial

module load dmtcp/3.0.0

checkpoint_file=`ls ckpt_*.dmtcp -t|head -n 1`
checkpoint_interval=8
port=$(shuf -i 40000-60000 -n 1)

if [ -z $checkpoint_file ]; then
    dmtcp_launch -p $port -i $checkpoint_interval ./dmtcp_serial
else
    dmtcp_restart -p $port -i $checkpoint_interval $checkpoint_file
fi

```

### First Submission - Launch a Program

Submit `dmtcp_serial_job.sh` and then wait for the job to run until time out. Below shows the beginning and end of the job output file

```
$ head  slurm-5157871.out -n 15
## SLURM PROLOG ###############################################################
##    Job ID : 5157871
##  Job Name : dmtcp_serial
##  Nodelist : node1139
##      CPUs : 1
##   Mem/CPU : 2800 MB
##  Mem/Node : 65536 MB
## Directory : /gpfs/data/ccvstaff/yliu385/Test/dmtcp/serial/batch_job
##   Job Started : Wed May 18 09:38:39 EDT 2022
###############################################################################
ls: cannot access ckpt_*.dmtcp: No such file or directory
  1
  2
  3
  4
$ tail slurm-5157871.out
 147
 148
 149
 150
 151
 152
 153
 154
 155
slurmstepd: error: *** JOB 5157871 ON node1139 CANCELLED AT 2022-05-18T09:43:58 DUE TO TIME LIMIT ***

```

### Later Submissions - Restart from a Checkpoint

Submit `dmtcp_serial_job.sh` and then wait for the job to run until time out.  Below shows the beginning of the job output file, which demonstrate that the job restarts from the checkpoint of the previous job.

```
$ head  slurm-5158218.out -n 15
## SLURM PROLOG ###############################################################
##    Job ID : 5158218
##  Job Name : dmtcp_serial
##  Nodelist : node1327
##      CPUs : 1
##   Mem/CPU : 2800 MB
##  Mem/Node : 65536 MB
## Directory : /gpfs/data/ccvstaff/yliu385/Test/dmtcp/serial/batch_job
##   Job Started : Wed May 18 09:50:39 EDT 2022
###############################################################################
 153
 154
 155
 156
 157

```

## Job Array

The following example script

* creates a sub directory for each task of a job array, and then saves a task's checkpoint in the task's own sub directory when the job script is submitted for the first time
* restarts checkpoints in task subdirectories when the job script is submitted for the second time or later

```bash
#!/bin/bash

#SBATCH -n 1
#SBATCH --array=1-4
#SBATCH -t 5:00
#SBATCH -J dmtcp_job_array

module load dmtcp/3.0.0

checkpoint_interval=8
port=$((SLURM_JOB_ID %20000 + 40000))
task_dir=jobtask_$SLURM_ARRAY_TASK_ID

if [ ! -d $task_dir ]; then
    mkdir $task_dir
    cd $task_dir
    dmtcp_launch -p $port -i $checkpoint_interval ../dmtcp_serial
else
    cd $task_dir
    checkpoint_file=`ls ckpt_*.dmtcp -t|head -n 1`
    if [ -z $checkpoint_file ]; then
        dmtcp_launch -p $port -i $checkpoint_interval ../dmtcp_serial
    else
        dmtcp_restart -p $port -i $checkpoint_interval $checkpoint_file
    fi
fi

```

