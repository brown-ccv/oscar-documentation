# SSH Agent Forwarding

When using VCS systems such as git or mercurial, it's common to use SSH to connect to VCS servers to push and pull code. SSH provides a method of sharing the ssh keys on your local machine with Oscar. This feature is called Agent Forwarding. This allows you to keep your keys on your local machine and still access your chosen VCS systems via SSH. Below are instructions on how to configure your SSH connection to forward ssh-agent.

{% hint style="info" %}
If you wish to use PuTTY for Agent Forwarding \(a good option for Windows users without a Unix shell\), use [this documentation](https://docs.ccv.brown.edu/oscar/managing-files/version-control/key-generation-and-agent-forwarding-with-putty).
{% endhint %}

First, start your `ssh-agent`. 

```text
$ eval $(ssh-agent)
Agent pid 48792
```

Next, add your ssh private keys to the running agent. This stem may be repeated for every key pair you use to connect to different git servers. For most, this file is called `id_rsa` and will live in `~/.ssh/id_rsa`. If you set a password for your ssh keys the agent will prompt you to enter them.

```text
$ ssh-add ~/.ssh/id_rsa
Enter passphrase for /Users/broarr/.ssh/id_rsa:
Identity added: /Users/broarr/.ssh/id_rsa (broarr@CIS2L0CFHV2J)
```

Confirm the ssh keys have been loaded into the agent.

```text
ssh-add -L
ssh-rsa AAAAB3NzaC1y...CQ0jPj2VG3Mjx2NR broarr@CIS2L0CFHV2J
```

Then ssh into Oscar with the `-A` option. `-A` will forward your ssh-agent to Oscar enabling you to use the ssh keys on your laptop while logged into Oscar.

```text
$ ssh -AX ssh.ccv.brown.edu
Warning: untrusted X11 forwarding setup failed: xauth key data not generated
Last login: Fri Nov 13 13:51:51 2020 from ssh4.oscar.ccv.brown.edu
Welcome to Oscar! This login node is shared among many users: please be
courteous and DO NOT RUN large-memory or compute-intensive programs here!
In particular, do not run MATLAB jobs here. They will be automatically killed.
Instead, submit a batch job or start an interactive session with 'interact'.

For help using this system, please search our documentation at
https://docs.ccv.brown.edu/oscar/  (or contact 'support@ccv.brown.edu')

module: loading 'java/8u111'
module: loading 'matlab/R2017b'
module: loading 'python/2.7.12'
module: loading 'intel/2017.0'
[broarr@login004 ~]$
```

Confirm your ssh-agent was properly forwarded by checking GitHub \(or any other VCS servers you use\). If the ssh command fails your agent has not been properly forwarded.

```text
[broarr@login004 ~]$ ssh git@github.com
PTY allocation request failed on channel 0
Hi broarr! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
```

To make these changes permanent, add an entry to the ssh config on your local machine. This config file lives at `~/.ssh/config`. If that file does not exist, create it, then add the following in that file replacing `User` with the user you use to connect to Oscar.

```text
Host oscar
        HostName ssh.ccv.brown.edu
        ForwardAgent yes
        ForwardX11 yes
        User broarr
```

Now you can log into Oscar with X11 and ssh-agent forwarding by running `ssh oscar`.

