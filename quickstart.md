---
description: How to connect to Oscar and submit your first batch job
---

# Quickstart

## Connect to OSCAR

{% hint style="info" %}
This guide assumes you have an Oscar account. To request an account see [create an account](https://brown.co1.qualtrics.com/jfe/form/SV\_0GtBE8kWJpmeG4B).&#x20;
{% endhint %}

The simplest way to connect to Oscar is via Open OnDemand (OOD). To connect to OOD, go to [https://ood.ccv.brown.edu](https://ood.ccv.brown.edu)[ ](https://ood.ccv.brown.edu)and log in using your Brown credentials. For more details on Open OnDemand click [here](connecting-to-oscar/open-ondemand/).&#x20;

Alternatively, you can connect to OSCAR via SSH (Terminal):

```bash
ssh <username>@ssh.ccv.brown.edu
```

{% hint style="info" %}
Windows users need an SSH client like [PuTTY](https://www.putty.org) installed. SSH is available by default on Linux and macOS. Click [here](connecting-to-oscar/ssh/) for more details.
{% endhint %}

## Submit a Job

You can submit a job using `sbatch`:

```
sbatch batch_scripts/hello.sh
```

You can confirm that your job ran successfully by running:

```
cat hello-*.out
```

For more detailed information on submitting jobs, see the [Submitting Jobs](broken-reference) section of the documentation.

## Transfer Files

To get specific files on to / off of Oscar, read through the [Transferring Files to and from Oscar](managing-files/filetransfer.md) page of the documentation.

## Get Help

If you encounter problems while using Oscar, check out the [Getting Help](broken-reference) documentation, or read through the Overview page.
