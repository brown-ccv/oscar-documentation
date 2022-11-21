---
description: How to save ssh configurations to a configuration file
---

# SSH Configuration File

When regularly connecting to multiple remote systems over SSH, you’ll find that remembering all the hosts and various command-line options becomes tedious. OpenSSH allows setting up a configuration file to store different SSH options for each remote machine you connect t.

### SSH Config File Location&#x20;

OpenSSH client-side (in this case your personal computer) configuration file is named `config`, and it is stored in the hidded `.ssh`directory under your user’s home directory (i.e., `~/.ssh`)

When you use the [`ssh`](https://linuxize.com/post/ssh-command-in-linux/)command for the first time. The `~/.ssh` directory is automatically created.  If the directory doesn’t exist on your system, create it using the command below:

```bash
mkdir -p ~/.ssh && chmod 700 ~/.ssh
```

By default, the SSH configuration file may not exist, so you may need to create it using the [`touch` command](https://linuxize.com/post/linux-touch-command/) :

```bash
touch ~/.ssh/config
```

This file must be readable and writable only by the user and not accessible by others:

```bash
chmod 600 ~/.ssh/config
```

### SSH Config File Structure Basics <a href="#ssh-config-file-structure-and-patterns" id="ssh-config-file-structure-and-patterns"></a>

The SSH Config File takes the following structure:

```ini
Host hostname1
    SSH_OPTION value
    SSH_OPTION value

Host hostname2
    SSH_OPTION value

Host *
    SSH_OPTION value
```

The contents of the SSH config file is organized into sections. Each section starts with the `Host` directive and contains specific SSH options used when establishing a connection with the remote SSH server.



### Oscar Hosts

Here we peovide a list of Oscar hosts and typical SSH configuration options. You have two options

1. Copy the list of hosts below directly into your SSH Config File (i.e., `~/.ssh/config`)&#x20;
2. Keep this content in a spearate file for Oscar hosts, lets say `~/.ssh/config.oscar` and include that file in your main configuration file. In this case, **the first line** of `~/.ssh/config` will be\
   \
   `Include "~/.ssh/config.oscar"`

{% hint style="info" %}
Don't forget to replace \<username> with your user. Also the configuration assumes your identity key is \~/.ssh/id\_rsa - if you named it anything else, please update the value. If you need to generate a key got [here](ssh-key-login-passwordless-ssh/)
{% endhint %}

<pre><code># Oscar Hosts. Any hosts with the -campus suffix can be accessed
# only whithin Brown network i.e. campus or vpn
# Hosts without -campus sufix can be accessed from outside Brown
# but will requiere 2FA

# Hosts to connect to login nodes
Host oscar
    HostName ssh.ccv.brown.edu
    User &#x3C;username>
    IdentityFile ~/.ssh/id_rsa
    ForwardAgent yes
    ForwardX11 yes
    TCPKeepAlive yes
    ServerAliveCountMax 20
    ServerAliveInterval 15
Host oscar-campus
    HostName sshcampus.ccv.brown.edu
    User &#x3C;username>
    IdentityFile ~/.ssh/id_rsa
    ForwardAgent yes
    ForwardX11 yes
    TCPKeepAlive yes
    ServerAliveCountMax 20
    ServerAliveInterval 15
    
# These are jumphosts for vscode, we don't use them directly.
# For connecting your IDE see the next section
Host desktop-oscar-campus
    HostName desktop.ccv.brown.edu
    IdentityFile ~/.ssh/id_rsa
    User &#x3C;username>
    ForwardAgent yes
Host desktop-oscar
    HostName ssh8.ccv.brown.edu
    IdentityFile ~/.ssh/id_rsa
    User &#x3C;username>
    
<strong># When connecting from VSCODE use the following hosts
</strong>Host vscode-oscar-campus
    HostName oscar2
    User &#x3C;username>
    ProxyCommand ssh -q -W %h:%p desktop-oscar-campus
Host vscode-oscar
    HostName oscar2
    User &#x3C;username>
    ProxyCommand ssh -q -W %h:%p desktop-oscar</code></pre>

### Connecting to your preconfigured host

You may now connect using the shortchut notation provided by your configuration file. That is, all you need to type is:&#x20;

```
ssh oscar-campus
```

According to the configuration above, this is equivalent to&#x20;

{% code overflow="wrap" %}
```bash
ssh -X -A -o TCPKeepAlive=yes -o ServerAliveCountMax=20 -o ServerAliveInterval=15 user@sshcampus.ccv.brown.edush
```
{% endcode %}

Much shorter. Enjoy!

