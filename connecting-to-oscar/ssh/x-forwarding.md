---
description: Instructions to forward X11 applications from Oscar to local computer
---

# X-Forwarding

If you have an installation of X11 on your local system, you can access Oscar with X forwarding enabled, so that the windows, menus, cursor, etc. of any X applications running on Oscar are all forwarded to your local X11 server. Here are some resources for setting up X11:

* Mac OS - [https://www.xquartz.org](https://www.xquartz.org)
* Windows - [https://sourceforge.net/projects/xming](https://sourceforge.net/projects/xming)

{% hint style="info" %}
One limitation of X forwarding is its sensitivity to your network connection's latency. We advise against using X forwarding from a connection outside of the Brown campus network, since you will likely experience lag between your actions and their response in the GUI.
{% endhint %}

### Mac/Linux

Once your X11 server is running locally, open a terminal and use

```
$ ssh -X <user>@ssh.ccv.brown.edu
```

to establish the X forwarding connection. Then, you can launch GUI applications from Oscar and they will be displayed locally on your X11 server.

### Windows (PuTTY)

For Windows users using PuTTY, enable X forwarding under Connections->SSH->X11:

