# Associations & Quality of Service \(QOS\)

## Associations

Oscar uses associations to control job submissions from users. An association refers to a combination of four factors: Cluster, Account, User, and Partition. For a user to submit jobs to a partition, an association for the user and partition is required in Oscar.

To view a table of association data for a specific user \(`thegrouch` in the example\), enter the following command in Oscar:

```text
(sacctmgr list assoc | head -2; sacctmgr list assoc | grep thegrouch) | cat
```

If `thegrouch` has an exploratory account, you should see an output similar to this:

```text
   Cluster    Account       User  Partition     Share GrpJobs       GrpTRES GrpSubmit     GrpWall   GrpTRESMins MaxJobs       MaxTRES MaxTRESPerNode MaxSubmit     MaxWall   MaxTRESMins                  QOS   Def QOS GrpTRESRunMin
---------- ---------- ---------- ---------- --------- ------- ------------- --------- ----------- ------------- ------- ------------- -------------- --------- ----------- ------------- -------------------- --------- -------------
     oscar    default  thegrouch  gpu-debug         1                                                                                                                                               gpu-debug gpu-debug
     oscar    default  thegrouch     bigmem         1                                                                                                                                             norm-bigmem norm-big+
     oscar    default  thegrouch        smp         1                                                                                                                                                norm-smp  norm-smp
     oscar    default  thegrouch        gpu         1                                                                                                                                                norm-gpu  norm-gpu cpu=34560,gr+
     oscar    default  thegrouch      batch         1                                                                                                                                                  normal    normal    cpu=110000
     oscar    default  thegrouch        vnc         1                                                                                                                                                     vnc       vnc
     oscar    default  thegrouch      debug         1                                                                                                                                                   debug     debug
```

Note that the first four columns correspond to the four factors that form an association. Each row of the table corresponds to a unique association \(i.e., a unique combination of Cluster, Account, User, and Partition values\). Each association is assigned a Quality of Service \(see QOS section below for more details\).

Some associations have a value for `GrpTRESRunMins`. This value indicates a limit on the total number of Trackable RESource \(TRES\) minutes that can be used by jobs running with this association at any given time.  The `cpu=110000` for the association with the `batch` partition indicates that all of the jobs running with this association can have at most an accumulated 110,000 core-minute cost. If this limit is reached, new jobs will be delayed until other jobs have completed and freed up resources.

### Example of `GrpTRESRunMins` Limit

Here is an example file that incurs a _significant_ core-minute cost:

```text
#!/bin/bash
#SBATCH -n 30
#SBATCH --mem=32G
#SBATCH -t 90:00:00

echo "Is this too much to ask? (Hint: What is the GrpTRESRunMins limit for batch?)"
```

If this file is named `too_many_cpu_minutes.sh`, a user with`thegrouch`'s QOS might experience something like this:

```text
$ sbatch too_many_cpu_minutes.sh
Submitted batch job 12345678
$ myq
Jobs for user thegrouch

Running:
(none)

Pending:
ID        NAME                     PART.  QOS     CPU  WALLTIME    EST.START  REASON
15726799  too_many_cpu_minutes.sh  batch  normal  30   3-18:00:00  N/A        (AssocGrpCPURunMinutesLimit)
```

{% hint style="info" %}
The `REASON` field will be `(None)` at first, but after a minute or so, it should resemble the output above \(after another `myq` command\).
{% endhint %}

Note that the `REASON` the job is pending and not yet running is `AssocGrpCPURunMinutesLimit`. This is because the program requests 30 cores for 90 hours, which is more than the oscar/default/thegrouch/batch association allows \(30 cores \* 90 hours \* 60 minutes/hour = 162,000 core-minutes &gt; 110,000 core-minutes\). In fact, this job could be pending indefinitely, so it would be a good idea for `thegrouch` to run `scancel 12345678` and make a less demanding job request \(or use an association that allows for that amount of resources\).

## Quality of Service

An association's QOS is used for job scheduling when a user requests that a job be run. Every QOS is linked to a set of job limits that reflect the limits of the cluster/account/user/partition of the association\(s\) that has/have that QOS. QOS's can also have information on `GrpTRESRunMins` limits for their corresponding associations. For example, [HPC Priority accounts](https://ccv.brown.edu/rates) have job limits of 1,198,080 core-minutes per job, which are associated with those accounts' QOS's. Whenever a job request is made \(necessarily through a specific association\), the job will only be queued if it meets the requirements of the association's QOS. In some cases, a QOS can be defined to have limits that differ from its corresponding association. In such cases, the limits of the QOS override the limits of the corresponding association.

For more information, see the [slurm QOS documentation](https://slurm.schedmd.com/qos.html).



