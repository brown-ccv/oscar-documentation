# Web-based Terminal App

{% hint style="warning" %}
## This service is still in Beta testing. If you find any bugs/issues with the service, we would appreciate your feedback at support@ccv.brown.edu
{% endhint %}



Open OnDemand offers a browser-based terminal app to access Oscar. Windows users who do not want to install an SSH client like Putty will find this app very useful.

### Accessing the terminal

1. Log in to [https://ood.ccv.brown.edu](https://ood.ccv.brown.edu)
2. In the top menu, click `Clusters` -> `>_OSCAR Shell Access`

![](../../.gitbook/assets/launch\_terminal.png)

A new tab will open and the web-based terminal app will be launched in it. The shell will be launched on one of the login nodes.

{% hint style="warning" %}
**The shell DOES NOT start on a compute node. Please do not run computations or simulations on the login nodes**, because they are shared with other users. You can use the login nodes to compile your code, manage files, and launch jobs on the compute nodes.&#x20;
{% endhint %}

![](../../.gitbook/assets/terminal\_screenshot.png)

3\. You are logged into one of the login nodes. You can [launch batch jobs ](../../submitting-jobs/batch.md)from this terminal or [start an interactive job](../../submitting-jobs/interact.md) for anything computationally intensive.

### Features:

1. No installation needed. Just use your favorite browser!
2. No need to enter your password again. SSH into Oscar in seconds!
3. No need to use two factor authentication again. Just do it once, when you log into OOD.
4. Use it with, or without, VPN. Your workflow remains the same.
