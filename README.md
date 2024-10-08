---
description: Overview of OSCAR Supercomputer
---

# Overview

Oscar is Brown University's high performance computing cluster for both research and classes. Oscar is maintained and supported by [**Center for Computation and Visualization (CCV)**](https://ccv.brown.edu/).&#x20;

Please contact [**`support@ccv.brown.edu`**](mailto:support@ccv.brown.edu) if there are any questions on Oscar.

## Accounts

&#x20;If you do not have an Oscar account, you can request one by **clicking the following link**:

{% embed url="https://brown.co1.qualtrics.com/jfe/form/SV_0GtBE8kWJpmeG4B" %}

Anyone with a Brown account can get a **free Exploratory accoun**t on Oscar, or **pay for priority accounts**.&#x20;

More details can be found at the [CCV Rates page](https://ccv.brown.edu/rates).

Individuals external to Brown can get access to Oscar by having a sponsored Brown account. Please work with your department to[ get sponsored Brown accounts](https://ithelp.brown.edu/kb/articles/request-a-brown-account-for-an-affiliate) for any external collaborators.

Authorized users must comply with the following Brown University policies:

* [Acceptable Use Policy](https://it.brown.edu/computing-policies/acceptable-use-policy)&#x20;
* [Computing Passwords Policy](http://www.brown.edu/information-technology/computing-policies/computing-passwords-policy).&#x20;
* [Computing Policies](https://it.brown.edu/computing-policies).

## Hardware

Users can run their computing-intensive and/or long runtime jobs/program in Oscar to take advantage of high performance computing resources there, as highlighted below:

* 2 Login nodes
* 8 PB of storage
* Red Hat Enterprise Linux 9.2 (Linux)
* Mellanox InfiniBand network
* Slurm Workload manager

Please refer to the details at[ Oscar hardware](system-overview.md).&#x20;

## Scheduler

Hundreds of users can share computing resources in Oscar.  [Slurm is used in Oscar to manage user jobs and computing resources](submitting-jobs/shared-machine.md) such as cores and GPUs. &#x20;

Users **should not run computations or simulations on the login nodes**, because they are shared with other users. You can use the login nodes to compile your codes, manage files, and launch jobs on the compute nodes.

To allow users sharing access to Oscar, there are **limits on the maximum number of pending and running jobs** a user account may have/submit:

* 1200 for a priority account
* 1000 for an exploratory account

## Software

* Operating systems of all Oscar nodes: Red Hat 9.2
* More than 500 [software modules](software/modules.md)
* CCV Staff install software upon user requests or help users on software installation

## Storage

Oscar has 8 PB of all-flash storage from VAST, which provides high-performance access to storage. Users have `~/home`, `~/scratch`, and `~/data` directories as their storage with quota  in Oscar. Please refer to the details at [Oscar's filesystem](managing-files/filesystem.md).

**Access and User Accounts** - User accounts are controlled via central authentication and directories on Oscar are only deleted on the request of the user, PI, or departmental chair.

**Files not accessed for 30 days will be deleted from your** `~/scratch` **directory**.  Use `~/data` for files you wish to keep long term.

Users can[ transfer files](managing-files/filetransfer.md) from and to[ Oscar filesystem](managing-files/filesystem.md). In particular, users can [transfer files between Oscar filesystem and Campus File Storage.](managing-files/filetransfer-isilon.md)&#x20;

## Connecting to Oscar

Oscar users can connect to Oscar by

* [SSH](connecting-to-oscar/ssh/)
* [Open OnDemand](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/open-ondemand)
* [VS Code Remote IDE](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/remote-ide)

## Maintenance Schedule

* **Non-disruptive Maintenance:**&#x20;
  * non-disruptive work, including software changes, maintenance, and testing
  * may occur at any time
  * no notification provided
* **Monthly Scheduled Maintenance:**
  * no downtime expected, but there may be limited degradation of performance
  * first Tuesday of the month, 8:00 am - 12:00 noon
  * no notification provided
* **Unscheduled Maintenance:**
  * maximum 1 day downtime
  * occurs very rarely and includes any unplanned emergency issues that arise
  * Prior notification provided (depending on the issue, 1 day to 4 weeks advance notice provided)
* **Major Upgrade Maintenance:**
  * service may be brought down for 3-5 days
  * occurs annually
  * 4-week prior notification provided

## Unplanned Outage

* During Business Hours:
  * Send email to [support@ccv.brown.edu](mailto:support@ccv.brown.edu). A ticket will get created and CCV staff will attempt to address the issue as soon as possible.
* During Non-Business Hours:
  * Send email to [support@ccv.brown.edu](mailto:support@ccv.brown.edu).
  * Call CIS Operations Center at (401) 863-7562. A ticket will get created and CCV staff will be contacted to address the issue.



## User and Research Support

CCV staff support for researchers seeking help with statistical modeling, machine learning, data mining, data visualization, computational biology, high-performance computing, and software engineering.

CCV staff provides tutorials on using Oscar for classes, groups and individual. Please check [CCV Events](https://events.brown.edu/ccv/all) for upcoming trainings and office hours.

CCV provides short videos (coming soon) for users to learn as well.

##
