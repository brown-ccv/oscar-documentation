# dbGaP Job Submission

All dbGaP data is stored on Isilon share mounted automatically when a user requests an interactive dbGaP session. 

**Step 1:** Request an interactive session on Oscar on the dbGaP. 

```
interact -q dbgap -n 20 -m 20g -t 01:00:00
```

Group membership for`dbgap, dbg_PiLastName, dbg_import, dbg_export` along with SLURM associations are required for working with dbGaP. 

**Step 2:** Understand the dbGaP Data Hierarchy

The native GPFS file system (Home, Scratch, Data, Runtime) will be read-only access. All dbGaP related work must be done in the`/dbGaP`root directory. The_ _`/dbGaP` directory has two sub-directories `data` & `results` . The downloaded datasets from the xfer server will be written to`/dbgap/import/user`and all output files will be written to the`/dbgap/results/username`directory. The hierarchy structure is:

```
psaluja@node1030:/dbGaP$ tree /dbGaP/
/dbGaP/
├── data
│   └── import
│       ├── group_1
│       ├── group_2
│       ├── user_1
|       |   ├── SRR10859003_1.fastq.gz
│       └── user_2
│           ├── SRR10859003_1.fastq.gz
│           ├── SRR10859003_2.fastq.gz
│           └── SRR10859003_3.fastq.gz
└── results
    ├── user_1
    │   ├── job_script.sh
    │   ├── slurm-145960.out
    │   └── slurm-1445969.out
    └── user_2
```

**Step 3: **Submitting a dbGaP batch jobs

Home, Scratch & Data will be in read-only mode only users must write their code files, batch scripts in their designated. Example batch script for dbGaP jobs

```
#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Define Partition 
#SBATCH -p dbgap

# Use 2 nodes with 8 tasks each, for 16 MPI tasks:
#SBATCH -N 2
#SBATCH --tasks-per-node=8

# Specify a job name:
#SBATCH -J dbGAP_analysis

# Specify an output file
#SBATCH -o /dbGaP/results/psaluja/slurm-%j.out
#SBATCH -e /dbGaP/results/psaluja/slurm-%j.err

# Run a command
module load sratoolkit/2.11.0
srun --mpi=pmix fasterq-dump --ngc your_file.ngc SRR1234567.sra
```

Any output files including SLURM out and err files must be written to `/dbGaP/results` directory. 
