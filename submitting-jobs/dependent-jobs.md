# Dependent Jobs

Here is an example script for running dependent jobs on Oscar. &#x20;

```
#!/bin/bash

# first job - no dependencies
jobID_1=$(sbatch  job1.sh | cut -f 4 -d' ')

# second job - depends on job1
jobID_2=$(sbatch --dependency=afterok:$jobID_1 job2.sh | cut -f 4 -d' ')

# third job - depends on job2
sbatch  --dependency=afterany:$jobID_2  job3.sh
```

There are 3 batch jobs.  Each job has it's own batch script:  job1.sh, job2,sh, jobs.sh.  The script above (script.sh)  submits the three jobs.

&#x20;   line 4: job1 is submitted.

&#x20;   line 7: job2  depends on  job1 finishing successfully.

&#x20;   line 10: job3 depends on job2 finishing successfully.

{% hint style="info" %}
To use the  above script to submit the 3 jobs, run the script as follows:

&#x20;  ./script.sh
{% endhint %}

For details on the types of dependencies you can use in slurm see the [sbatch](https://slurm.schedmd.com/sbatch.html) manual page.&#x20;
