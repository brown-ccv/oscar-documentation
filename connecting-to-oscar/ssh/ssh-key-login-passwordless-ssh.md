---
description: This page describes how to set up SSH key authentication.
---

# SSH Key Login \(Passwordless SSH\)

{% hint style="info" %}
For passwordless SSH one must be connected to the [VPN ](http://vpn.brown.edu)and use hostname _ssh7.ccv.brown.edu_
{% endhint %}

### Mac / Linux 

#### Step 1 : Check for existing SSH key pair

Before generating new SSH key pair first check if you have an SSH key on your local machine. 

```text
ls -al ~/.ssh/id_*.pub
```

If there are existing keys, please move to Step 3

#### Step 2 : Generate a new SSH Keypair

```text
ssh-keygen -t rsa
```

Press Enter to accept the default file location and file name. 

The `ssh-keygen` will ask you to type a secure passphrase. This is optional but we highly recommend it. If you don't want to use a passphrase just press `Enter`

Verify the SSH keys are generated correctly, you should see two files `id_rsa` and `id_rsa.pub` under `~/.ssh` directory.

{% hint style="info" %}
DO NOT upload or send the private key. 
{% endhint %}

**Step 3 : Copy the public key to Oscar**

```text
ssh-copy-id <username>@ssh.ccv.brown.edu
```

You will be prompted for a Password. The public key will be appended to the `authorized_keys` file on Oscar. 

**Step 4 : Login to Oscar using your SSH keys** 

```text
ssh <username>@sshvpn.ccv.brown.edu
```

If everything went well, you will be logged in immediately. 





