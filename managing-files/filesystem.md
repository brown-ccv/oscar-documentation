---
title: Filesystem
date: '2019-01-31T22:06:44.000Z'
draft: false
project: Oscar
section: Managing files
weight: 0
icon: check
---

# Oscar's Filesystem

CCV uses all-flash parallel filesystem (Vast Data). Users have a home, data, and scratch space.

&#x20; **home** `~`

* 20GB of space
* Optimized for many small files
* Nightly backups (7 days)
* Quota is per individual user
* Grace period of 14 days

**data** `~/data`

* Each PI gets 256GB for free
* Optimized for reading large files
* Nightly backups (7 days)
* Quota is by group
* Grace period of 14 days

**scratch** `~/scratch`

* 512GB of space - contact support@ccv.brown.edu increase on a temporary basis
* Optimized for reading/writing large files
* NO BACKUPS
* Purging: files not accessed for 30 days may be deleted
* Quota is per individual user
* Grace period of 21 days

{% hint style="warning" %}
Files not accessed for 30 days will be deleted from your scratch directory. This is because scratch is high performance space. The fuller scratch is the worse the read/write performance. **Use \~/data for files you need to keep long term.**
{% endhint %}

{% hint style="warning" %}
The scratch purge is on individual files. It is by 'atime' which is when the file was last read. You can use 'find' to find files that are at risk of being purged, e.g. to find files in the current directory that have not been accessed in the last 25 days:

find . -atime +25
{% endhint %}

A good practice is to configure your application to read any initial input data from `~/data` and write all output into `~/scratch`. Then, when the application has finished, move or copy data you would like to save from `~/scratch` to `~/data`.

{% hint style="info" %}
Note: class or temporary accounts may not have a `~/data` directory!
{% endhint %}

To see how much space on your directories, you can use the command `checkquota`. Below is an example output

```
$ checkquota
Name       Path                 Used(G)    (%) Used   SLIMIT(G)  H-LIMIT(G) Used_Inodes     SLIMIT     HLIMIT     Usage_State  Grace_Period  
ccvdemo1   /oscar/home          3.72       2          100        140        63539           2000000    3000000    OK           None          
ccvdemo1   /oscar/scratch       0.00       0          512        10240      1               4000000    16000000   OK           None          
Now fetching Data directory quotas...
Name        Used(T)   (%) Used   SLIMIT(T)   HLIMIT(T)   Used_Inodes   SLIMIT    HLIMIT    Usage_State   Grace_Period  
data+nopi   0.0       0          0.88        0.98        466           4194304   6291456   OK            None 
```

{% hint style="warning" %}
You can go over your quota up to the hard limit for a grace period. This grace period is to give you time to manage your files. When the grace period expires you will be unable to write any files until you are back under quota.
{% endhint %}

{% hint style="info" %}
There is a quota for space used and for number of files. If you hit the hard limit on **either** of these you will be unable to write any more files until you are back under quota.
{% endhint %}

{% hint style="warning" %}
Keep the number of files within the ranges from 0.5M (preferred) to 1M (upper limit). Going beyond this limit can lead to unexpected problems.
{% endhint %}
