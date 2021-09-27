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

{% hint style="info" %}
You need log in using your Brown password. Old Oscar password can not be used for ssh any more.
{% endhint %}

There are two options for signing into Oscar: with or without VPN.

{% hint style="info" %}
If you are connected to the Brown VPN, you have the option of [using an SSH key pair](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh) to connect to Oscar without having to enter your password.
{% endhint %}

## Summary of SSH Hosts

* `ssh.ccv.brown.edu` You can connect from anywhere. You will need Two Factor Authentication
* `sshcampus.ccv.brown.edu` You can connect when whithin Brown Wifi, Network or VPN. You will need Two Factor Authentication unless you  [set up passwordless authentication](ssh-key-login-passwordless-ssh.md).
* `desktop.ccv.brown.edu` This is the host to be used when [connecting from a remote IDE](../remote-ide.md), i.e., Visual Studio Code.

## macOS and Linux

To log in to Oscar, open a terminal and

* If you are not connected to the Brown VPN, use the following command:

```bash
ssh -X username@ssh.ccv.brown.edu
```

* If you are connected to the Brown VPN, use the following command:

```bash
ssh -X username@sshcampus.ccv.brown.edu
```

The `-X` allows Oscar to display windows on your machine. This allows you to open and use GUI-based applications, such as the text editor `gedit`.

{% hint style="info" %}
Watch our videos on [SSHing on Linux](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=b2112f1f-488f-4f8b-add9-acfb00f71bcf) and [SSHing on Mac](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=9d443b81-6620-4952-8451-acf70133c703).
{% endhint %}

## Windows

Windows users need to install an SSH client. We recommend [PuTTY](http://www.chiark.greenend.org.uk/\~sgtatham/putty/download.html), a free SSH client for Windows.

* If you are not connected to the Brown VPN, use `username@ssh.ccv.brown.edu` as the Host Name and click Open.

![](../../.gitbook/assets/image%20%2826%29.png)

* If you are connected to the Brown VPN, use `username@sshvpn.ccv.brown.edu` as the Host Name and click Open.

![](../../.gitbook/assets/image%20%2825%29.png)

{% hint style="info" %}
Confused? Watch our [tutorial on PuTTY installation](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=9323efff-236f-4408-8006-acf3012bea9b) or [SSHing to Oscar on Windows](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1b172848-b8b3-42f7-ba20-acf3012ee4c5).
{% endhint %}

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
[username@login004 ~]$
```

Congratulations, you are now on one of the Oscar login nodes! The login nodes are for administrative tasks such as editing files and compiling code. To use Oscar for computation you will need to use the compute nodes. To get to the compute nodes from the login nodes you can either start an interactive session on a compute node, or submit a batch job.

{% hint style="warning" %}
Please do not run CPU-intense or long-running programs directly on the login nodes! The login nodes are shared by many users, and you will interrupt other users' work.
{% endhint %}

