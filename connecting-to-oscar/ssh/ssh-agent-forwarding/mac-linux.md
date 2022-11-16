---
description: Agent Forwarding in Mac and Linux Systems
---

# Mac/Linux

## Start the SSH-Agent

First, start your `ssh-agent` with the command below.&#x20;

```
$ eval $(ssh-agent)
```

You should see an output similar to this:

```
Agent pid 48792
```

## Add Key(s)

Next, add your ssh private keys to the running agent (using the `ssh-add` command on line 1). This step may be repeated for every key pair you use to connect to different git servers. For most, this file is called `id_rsa` and will live in `~/.ssh/id_rsa`. If you set a password for your ssh keys, the agent will prompt you to enter them.

```
$ ssh-add ~/.ssh/id_rsa
Enter passphrase for ~/.ssh/id_rsa:
Identity added: ~/.ssh/id_rsa 
```

Confirm the ssh keys have been loaded into the agent with `ssh-add -L`:

```
$ ssh-add -L
ssh-rsa AAAAB3NzaC1y...CQ0jPj2VG3Mjx2NR user@computer
```



## Connect to Oscar

Now ssh into Oscar with the `-A` option as shown on the first line below (replace `username` with your Oscar username). `-A` will forward your ssh-agent to Oscar, enabling you to use the ssh keys on your laptop while logged into Oscar.

```
$ ssh -A username@ssh.ccv.brown.edu
```

If you have ssh keys setup on your local computer to connect to GitHub, you can confirm your ssh-agent was properly forwarded by checking GitHub . If the ssh command fails, your agent has not been properly forwarded.

```
$ ssh git@github.com

Hi JaneDoe! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
```



## Always connecting with Agent Forwarding

To make these changes permanent, you can add the `ForwardAgent yes` option to your ssh configuration file. To learn more about configuring your ssh connections, visit

{% content-ref url="../ssh-configuration-file.md" %}
[ssh-configuration-file.md](../ssh-configuration-file.md)
{% endcontent-ref %}

