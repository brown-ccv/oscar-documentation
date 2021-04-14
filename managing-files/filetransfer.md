---
title: Filetransfer
date: '2019-01-31T22:06:52.000Z'
draft: false
project: Oscar
section: Managing files
weight: 0
icon: check
---

# Transferring Files to and from Oscar

There are several ways to move files between your machine and Oscar. Which method you choose will depend on how much data you need to move and your personal preference for each method.

1. [CIFS](../connecting-to-oscar/cifs.md)
2. [Command line](filetransfer.md#2-command-line) \(scp\)
3. [GUI application](filetransfer.md#3-gui-programs-for-transferring-files-using-the-scp-or-sftp-protocol)
4. [Globus online](filetransfer.md#4-globus-online) \(best for large transfers\)

## 1. CIFS

{% hint style="danger" %}
CIFS is not available until further notice!
{% endhint %}

You can drag and drop files from your machine to the Oscar filesystem with CIFS. This is an easy method for a small number of files.

## 2. Command line

**Mac and Linux**

You can use `scp` to transfer files. For example to copy a file from your computer to Oscar:

```text
     scp /path/to/source/file <username>@ssh.ccv.brown.edu:/path/to/destination/file
```

To copy a file from Oscar to your computer:

```text
     scp <username>@ssh.ccv.brown.edu:/path/to/source/file /path/to/destination/file
```

**Windows** On Windows, if you have PuTTY installed, you can use it's `pscp` function from the terminal.

## 3. GUI programs for transferring files using the `scp`  protocol

In general, you can specify the followings for your GUI programs:

* Protocol: SCP File Transfer Protocol
* Host: ssh.ccv.brown.edu
* User: your Oscar username
* Password: your Oscar password

### 3.1 [WinSCP](https://winscp.net/eng/index.php) for Windows

![WinSCP Session Creation](../.gitbook/assets/image%20%2811%29.png)

## 4. Globus online

[Globus](https://www.globus.org) is a secure, reliable research data management service. You can move data directly to Oscar from anothe Globus endpoint. Oscar has one Globus endpoint:

```text
Brown_CCV_Oscar
```

If you want to use Globus Online to move data to/from you own machine, you can install Globus Connect Personal. For more instructions on how to use Globus, see the [Oscar section](https://docs.ccv.brown.edu/globus/creating-endpoints/using-globus-with-oscar) in the Globus documentation.

