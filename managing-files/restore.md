---
title: Restore
date: '2019-02-01T13:43:12.000Z'
draft: false
project: Oscar
section: Managing files
weight: 0
icon: check
---

# Restoring Deleted Files

Nightly snaphots of the file system are available for the last 30 days.

{% hint style="warning" %}
CCV does not guarantee that each of the last 30 days will be available in snapshots because occasionally the snapshot process does not complete within 24 hours.
{% endhint %}

### Restore a file from a snapshot in the last 30 days

Nightly snapshots of the file system are available for the last 30 days can be found in the following directories.

**Home** directory snapshot

```
/oscar/home/.snapshot/Oscar_<yyyy-mm-dd>_00_00_00_UTC/<username>/<path_to_file>
```

**Data** directory snapshot

```
/oscar/data/.snapshot/Oscar_<yyyy-mm-dd>_00_00_00_UTC/<groupname>/<username>/path_to_file>
```

**Scratch** directory snapshot

```
/oscar/scratch/.snapshot/Oscar_Daily_<yyyy-mm-dd>_00_00_00_UTC/<username>/<path_to_file>
```

To restore a file, copy the file from the snapshot to your directory.

{% hint style="danger" %}
Do **not** use the links in your home directory snapshot to try and retrieve snapshots of data and scratch. The links will always point to the current versions of these files. An easy way to check what a link is pointing to is to use `ls -l`
{% endhint %}

_e.g._:

```bash
ls -l /oscar/home/.snapshot/Osar_2023-06-22_00_00_00_UTC/ghopper/data
lrwxrwxrwx 1 ghopper navy 22 Mar  1  2016 /oscar/home/.snapshot/Osar_2023-06-22_00_00_00_UTC/ghopper/data -> /oscar/data/navy
```
