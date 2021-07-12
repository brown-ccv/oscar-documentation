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

There are two options for signing into Oscar: with or without VPN.

{% hint style="info" %}
If you are connected to the Brown VPN, you have the option of [using an SSH key pair](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh) to connect to Oscar without having to enter your password.
{% endhint %}

## macOS and Linux

To log in to Oscar, open a terminal and

* If you are not connected to the Brown VPN, use the following command:

```bash
ssh -X username@ssh.ccv.brown.edu
```

* If you are connected to the Brown VPN, use the following command:

```bash
ssh -X username@sshvpn.ccv.brown.edu
```

The `-X` allows Oscar to display windows on your machine. This allows you to open and use GUI-based applications, such as the text editor `gedit`.

## Windows

Windows users need to install an SSH client. We recommend [PuTTY](http://www.chiark.greenend.org.uk/\~sgtatham/putty/download.html), a free SSH client for Windows.

* If you are not connected to the Brown VPN, use `username@ssh.ccv.brown.edu` as the Host Name and click Open.

![](../../.gitbook/assets/image%20%2826%29.png)

* If you are connected to the Brown VPN, use `username@sshvpn.ccv.brown.edu` as the Host Name and click Open.

![](../../.gitbook/assets/image%20%2825%29.png)

{% hint style="info" %}
Confused? Watch our [tutorial on PuTTY installation](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=9323efff-236f-4408-8006-acf3012bea9b).
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

