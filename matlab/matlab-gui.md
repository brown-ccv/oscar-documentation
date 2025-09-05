---
title: Matlab Gui
date: '2019-01-31T22:07:31.000Z'
draft: false
project: Oscar
section: MATLAB
weight: 0
---

# Matlab GUI

On Oscar, the command `matlab` is actually a wrapper that sets up MATLAB to run as a single-threaded, command-line program, which is the optimal way to pack multiple Matlab scripts onto the Oscar compute nodes.

To run the actual multi-threaded version with JVM and Display enabled, use:

```
matlab-threaded
```

Similarly, to run this without the display enabled:

```
matlab-threaded -nodisplay
```

{% hint style="danger" %}
Do **not** run Matlab on the Oscar login nodes. Request a compute node either with an interactive session, a batch script, or using the VNC.
{% endhint %}

## VNC

The [Open OnDemand desktop app](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/open-ondemand/desktop-app-vnc) is the best way to launch GUI applications on Oscar, including Matlab. Open a terminal in your session and load the version of Matlab needed. Then use the `matlab-threaded` command to launch the Matlab GUI. For example,

<pre><code><strong>module load matlab/2021a
</strong><strong>matlab-threaded
</strong></code></pre>

{% hint style="info" %}
Use <mark style="color:red;">`module avail matlab`</mark> to search for other Matlab versions to load.&#x20;
{% endhint %}

Here is a snapshot of what it looks like:

<figure><img src="../.gitbook/assets/Screenshot_2023-05-11_at_1_17_30_PM.png" alt=""><figcaption></figcaption></figure>

## X11 Forwarding

You can also run the MATLAB GUI in an X-forwarded interactive session. This requires installing an X server on your workstation/PC and logging in to Oscar with [X forwarding](https://github.com/brown-ccv/oscar-documentation/tree/918b50a24d064a0c7e6aa49eef728199435d7de1/matlab/x-forwarding/README.md) enabled. Use the `interact` command to get interactive access to a compute node. Again, for launching the GUI, you need to use the `matlab-threaded` command, which enables the display and JVM. You may however experience a lag in response from the Matlab GUI in an X forwarded session. Note that if Matlab does not find the X window system available, it will launch in command line mode (next section).

## CIFS

A workaround in some situations may be to use [CIFS](https://github.com/brown-ccv/oscar-documentation/tree/918b50a24d064a0c7e6aa49eef728199435d7de1/matlab/cifs/README.md) to mount the Oscar filesystem on your PC and using the Matlab installation on your computer. For example, if you have your simulation results residing on Oscar, this might be a quick way to do post-processing on the data instead of having to move the data to your computer or using the Matlab GUI on Oscar. Note that users can connect to CIFS only from Brown computers or on Brown WiFi.
