# Mac/Linux/Windows(PowerShell)

## Step 1 : Check for existing SSH key pair

Before generating new SSH key pair first check if you have an SSH key on your local machine.&#x20;

```
ls ~/.ssh/id_*.pub
```

If there are existing keys, please move to Step 3

## Step 2 : Generate a new SSH Keypair

{% tabs %}
{% tab title="Mac/Linux" %}
```
ssh-keygen -t rsa
```
{% endtab %}

{% tab title="Windows (PowerShell)" %}
```
ssh-keygen.exe
```
{% endtab %}
{% endtabs %}

Press Enter to accept the default file location and file name.&#x20;

The `ssh-keygen` will ask you to type a secure passphrase. This is optional. If you don't want to use a passphrase just press `Enter`

Verify the SSH keys are generated correctly, you should see two files `id_rsa` and `id_rsa.pub` under `~/.ssh` directory.

{% hint style="info" %}
DO NOT upload or send the private key.&#x20;
{% endhint %}

## **Step 3 : Copy the public key to Oscar**

You will now need to copy your **public key** to Oscar. There are two ways to acomplish this.

### **With ssh-copy-id**

If your OS comes with the `ssh-copy-id` utility, then you'll be able to copy your public key into Oscar as follows:

```
ssh-copy-id <username>@sshcampus.ccv.brown.edu
```

You will be prompted for a Password. The public key will be appended to the `authorized_keys` file on Oscar.&#x20;

If you used a custom name for your key instead of the default `id_rsa` then you'll need pass the name of your key to `ssh-copy-id` i.e.,

```
ssh-copy-id -i ~/.ssh/<keyname> <username>@sshcampus.ccv.brown.edu
```

### **Without ssh-copy-id**

If your system does not come with the `ssh-copy-id` utility installed, then you'll need to copy your **public key** by hand.

1. Get the contents of `id_rsa.pub` file. One option is to use `cat` in your teminal\
   &#x20;`cat id_rsa.pub`.&#x20;
2. Copy the contents of this file to your clipboard, as we need to upload it to Oscar.
3. Login into Oscar via regular ssh `ssh <username>@ssh.ccv.brown.edu`. Once you are on the login node, open the authorized\_keys file with your text editor of choice e.g.,\
   \
   `vim ~/.ssh/authorized_keys`\
   ``\
   ``or\
   \
   `nano ~/.ssh/authorized_keys`\
   ``\
   ``Add your public keys to **end** of this file. Save and exit.&#x20;

## **Step 4 : Login to Oscar using your SSH keys**&#x20;

```
ssh <username>@sshcampus.ccv.brown.edu
```

If everything went well, you will be logged in immediately withouth prompting you for a password.&#x20;

