---
title: SSH
date: '2019-01-31 22:06:00 +0000'
project: Oscar
section: Connecting to Oscar
weight: 0
icon: check
---

# SSH \(Terminal\)

To log in to Oscar you need Secure Shell \(SSH\) on your computer.

## macOS and Linux

To log in to Oscar, open a terminal and type

```bash
ssh -X username@ssh.ccv.brown.edu
```

The `-X` allows Oscar to display windows on your machine. This allows you to open and use GUI-based applications, such as the text editor `gedit`.

## Windows

Windows users need to install an SSH client. We recommend [PuTTY](http://www.chiark.greenend.org.uk/\~sgtatham/putty/download.html), a free SSH client for Windows.

In PuTTY, use `username@ssh.ccv.brown.edu` as the Host Name and click Open.

![](../../.gitbook/assets/image%20%2821%29.png)

## Connecting to Oscar for the First Time

The first time you connect to Oscar you will see a message about the authenticity of the host:

```bash
The authenticity of host 'ssh.ccv.brown.edu (138.16.172.8)' can't be established.
RSA key fingerprint is SHA256:Nt***************vL3cH7A.
Are you sure you want to continue connecting (yes/no)?
```

You can type `yes` and press return. On subsequent logins you should not see this message.

You will then be prompted for your password.

{% hint style="info" %}
Nothing will show up on the screen as you type in your password. Just type it in and press enter.
{% endhint %}

You will now be in your home directory on Oscar. In your terminal you will see a prompt like this:

```text
[mhamilton@login004 ~]$
```

Congratulations, you are now on one of the Oscar login nodes! The login nodes are for administrative tasks such as editing files and compiling code. To use Oscar for computation you will need to use the compute nodes. To get to the compute nodes from the login nodes you can either start an interactive session on a compute node, or submit a batch job.

{% hint style="warning" %}
Please do not run CPU-intense or long-running programs directly on the login nodes! The login nodes are shared by many users, and you will interrupt other users' work.
{% endhint %}

