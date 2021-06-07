---
Title: Oscar
type: Oscar
level: Main
weight: 0
icon: oscar.svg
---

# Oscar - Brown University's Supercomputer

Oscar - Ocean State Center for Advanced Resources - is Brown University's supercomputer for both research and classes. Oscar is maintained and supported by ****[**Center for Computation and Visualization \(CCV\)**](https://ccv.brown.edu/). 

Please contact [**`support@ccv.brown.edu`**](mailto:support@ccv.brown.edu) if there are any questions on Oscar.

## Accounts

 If you do not have an Oscar account, you can request one by **clicking the following link**:

{% embed url="https://brown.co1.qualtrics.com/jfe/form/SV\_0GtBE8kWJpmeG4B" %}

Anyone with a Brown account can get a **free Exploratory accoun**t on Oscar, or **pay for priority accounts**. A free Exploratory account allows:

* 32 cores and 246GB memory for up to 48 hours in the batch queue
* 4 cores, 192GB memory and 2 GPUs for up to 48 hours in the gpu queue
* 32 cores and 752GB memory for up to 48 hours in the bigmem queue

More details can be found at the [CCV Rates page](https://ccv.brown.edu/services/rates).

{% embed url="https://ccv.brown.edu/services/rates" %}

Individuals external to Brown can get access to Oscar by having a sponsored Brown account. Please work with your department to[ get sponsored Brown accounts](https://ithelp.brown.edu/kb/articles/request-a-brown-account-for-an-affiliate) for any external collaborators.

Authorized users must comply with the following Brown University policies:

* [Acceptable Use Policy](https://it.brown.edu/computing-policies/acceptable-use-policy) 
* [Computing Passwords Policy](http://www.brown.edu/information-technology/computing-policies/computing-passwords-policy). 
* [Computing Policies](https://it.brown.edu/computing-policies).

## Hardware

Users can run their computing-intensive and/or long runtime jobs/program in Oscar to take advantage of high performance computing resources there, as highlighted below:

* 13,100 cores on 443 nodes
* 27 GPU nodes
* 4 Large memory nodes \(&gt;512GB\)
* Mellanox InfiniBand network

Please refer to the details at[ Oscar hardware](system-overview.md). 

## Scheduler

Hundreds of users can share computing resources in Oscar.  [Slurm is used in Oscar to manage user jobs and computing resources](submitting-jobs/shared-machine.md) such as cores and GPUs.  

Users **should not run computations or simulations on the login nodes**, because they are shared with other users. You can use the login nodes to compile your codes, manage files, and launch jobs on the compute nodes.

To allow users sharing access to Oscar, there are **limits on the maximum number of pending and running jobs** a user account may have/submit:

* 1200 for a priority account
* 1000 for an exploratory account

## Software

* Operating systems of all Oscar nodes: RedHat 7.3
* More than 500 [software modules](software/modules.md)
* CCV Staff install software upon user requests or help users on software installation

## Storage

Oscar has 3.27PB storage from the General Parallel File System \(GPFS\) of IBM, which provides high performance access of storage. Users have Home, Scratch, and Data directories as their storage with quota  in Oscar. Please refer to the details at [Oscar's filesystem](managing-files/filesystem.md).

**Access and User Accounts** - User accounts are controlled via central authentication and directories on HPC are only deleted on the request of the user, PI, or departmental chair.

**Files not accessed for 30 days will be deleted from your scratch directory.** Use ~/data for files you wish to keep long term.

Users can[ transfer files](managing-files/filetransfer.md) from and to[ Oscar filesystem](managing-files/filesystem.md). In particular, users can [transfer files between Oscar filesystem and Campus File Storage.](managing-files/filetransfer-isilon.md) 

## Connecting to Oscar

Oscar users can connect to Oscar by

* [SSH](connecting-to-oscar/ssh/)
* [VNC](connecting-to-oscar/vnc.md)

## Maintenance Schedule

* **Nondisruptive Maintenance -** may occur at any time, no notification provided, non-disruptive work, including software changes, maintenance, and testing
* **Monthly Scheduled Maintenance** - first Tuesday of the month, 8:00 am - 12:00 noon, no notification provided\) - no downtime expected, but there may be limited degradation of performance
* **Unscheduled Maintenance -** \(occurs very rarely, the 4-week prior notification provided\) - CCV tries to avoid whenever possible; maximum 1-day downtime
* **Major Upgrade Maintenance -** occurs annually, 4-week prior notification provided - service may be brought down for 3-5 days

## Unplanned Outage

* During Business Hours:
  * Send email to [support@ccv.brown.edu](mailto:support@ccv.brown.edu). A ticket will get created and CCV staff will attempt to address the issue as soon as possible.
* During Non-Business Hours:
  * Send email to [support@ccv.brown.edu](mailto:support@ccv.brown.edu).
  * Call CIS Operations Center at \(401\) 863-7562. A ticket will get created and CCV staff will be contacted to address the issue.



## User and Research Support

CCV staff support for researchers seeking help with statistical modeling, machine learning, data mining, data visualization, computational biology, high-performance computing, and software engineering.

CCV staff provides tutorials on using Oscar for classes, groups and individual. Please check [CCV Events](https://events.brown.edu/ccv/all) for upcoming trainings and office hours.

CCV provides short videos \(coming soon\) for users to learn as well.

## 

