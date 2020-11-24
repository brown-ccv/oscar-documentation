---
description: >-
  This page is for users trying to open Jupyter Notebooks/Labs through Oscar
  with Windows.
---

# Tunneling into Jupyter with Windows

## Software that makes it easy

If you are using Windows, you can use any of the following options to open a terminal on your machine \(ranked in order of least difficult to set up and use\):

* [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab)
* [MobaXterm](https://mobaxterm.mobatek.net/download-home-edition.html)
* [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) \(we recommend Ubuntu as your Linux distribution\)

After opening a terminal using any of these programs, simply enter the `ssh` command provided by the `jupyter-log-{jobid}.txt` file. Then continue with the steps given by the documentation that led you to this page.

If you have PuTTY and would prefer to not download any additional software, there are steps \(explained below\) that you can take to use PuTTY to tunnel into a Jupyter Notebook/Lab.

## Using PuTTY

These instructions will use `ssh -N -L 9283:172.20.209.14:9283 username@ssh.ccv.brown.edu` as an example command that could be found in the `jupyter-log-{jobid}.txt`  file.

Open PuTTY and enter your host name \(username@ssh.ccv.brown.edu\) in the textbox.

![](../.gitbook/assets/image%20%287%29.png)

Next, navigate to the 'Tunnels' Menu \(click the '+' next to SSH in order to have it displayed\).

![](../.gitbook/assets/image%20%289%29.png)

Enter the source port \(9283 in the example\) and destination \(172.20.209.14:9283 in the example\). Click 'Add'. The source port and destination should show up as a pair in the box above. Then click 'Open'. A new window should open requesting your password.

{% hint style="success" %}
After entering your password, you should be able to access the notebook/lab in a browser using `localhost:ipnport` \(see the documentation that led you here for details\).
{% endhint %}

