# Dependent Jobs



```text
#!/bin/bash

# first job - no dependencies
jobID_1=$(sbatch  job1.sh | cut -f 4 -d' ')

# second job - depends on job1
jobID_2=$(sbatch --dependency=afterok:$jobID_1 job2.sh | cut -f 4 -d' ')

# third job - depends on job2
sbatch  --dependency=afterany:$jobID_2  job3.sh
```



