# Interactive Apps on OOD

You can launch several different apps on the Open OnDemand (OOD) interface. All of these apps start of a Slurm batch job on the Oscar cluster with the requested amount of resources. These jobs can access the filesystem on Oscar and all output files are written to the Oscar's file system.

## Launching an App on OOD

1. Open [https://ood.ccv.brown.edu](https://ood.ccv.brown.edu) on any browser of the your choice
2. &#x20;If prompted, enter your Brown username and password.
3. &#x20;Click on the "Interactive Apps" tab at the top of the screen to see the list of available apps. This will open the form to enter the details of the job.
4. Follow the instructions on the form to complete it. Some of fields can be left blank and OOD will choose the default option for you.
5. Click Launch to submit an OOD job. This will open a new tab on the browser It may take a few minutes for this job to start.&#x20;
6. Click "Launch \<APP>" again if prompted in the next tab.

{% hint style="warning" %}
SLURM limits on resources such CPUs, memory, GPUs or time for each partition still applies for OOD jobs. Please keep these in mind before choosing these options on the OOD form.
{% endhint %}

