# CIFS  non-AD (Local Mount)



{% hint style="danger" %}
#### <mark style="color:red;">The 'oscarcifs.ccv.brown.edu' has been deprecated as of January 11, 2022. Please click the page above for new mount 'smb.ccv.brown.edu'</mark>
{% endhint %}

CCV users can access their home, data, and scratch directories as a local mount on their own Windows, Mac, or Linux system using the Common Internet File System (CIFS) protocol (also called Samba). This allows you to use applications on your machine to open files stored on Oscar. It is also a convenient way to move files between Oscar and your own machine, as you can drag and drop files.

{% hint style="info" %}
To use CIFS you will need to be connected to the VPN. Please install the [Brown VPN client](https://vpn.brown.edu) before proceeding.
{% endhint %}

Users should ensure that the date and time are set correctly on their machine. Once the date and time are correct, [use SSH to connect to Oscar](https://app.gitbook.com/@brown-cis/s/oscar/\~/drafts/-Lg4RZ07lpbY8-GXym-g/primary/connecting-to-oscar/ssh) to set your CIFS password. Once logged in, run the command:

```
smbpasswd
```

First, you will be prompted for your "old" password, which is the temporary password you were given by CCV when your account was created. Next, you will be asked to enter a new CIFS password twice. You may choose to use the same password that you use for Oscar, if you wish.

smbpasswd does not change your SSH login password, and changing the SSH login password does not change the CIFS password. However, if you ever need to request that your Oscar password be reset, both your smbpasswd and SSH login password to the same reset value.‌

Now you are ready to mount your CCV directories locally. Instructions for each of the various operating systems are given below.‌

## macOS <a href="#macos" id="macos"></a>

1.  In the Finder, press "Command + K" or select "Connect to Server..."

    from the "Go" menu.
2.  For "Server Address", enter `smb://oscarcifs.ccv.brown.edu/<user>`

    and click "Connect".
3. Enter your username and CIFS password.
4. You may choose to add your login credentials to your keychain so you will not need to enter this again.

**Optional.** If you would like to automatically connect to the share at startup:‌

1. Open "System Preferences" (leave the Finder window open).
2. Go to "Accounts" > "(your account name)".
3. Select "Login Items".
4. Drag your data share from the "Finder" window to the "Login Items" window.‌

## Linux <a href="#linux" id="linux"></a>

1.  Install the `cifs-utils` package:

    ```
    CentOS/RHEL:   $ sudo yum install cifs-utilsUbuntu:        $ sudo apt-get install cifs-utils
    ```
2.  Make a directory to mount the share into:

    ```
    $ sudo mkdir /mnt/rdata
    ```
3.  Create a credentials file and add your CCV account information (use the CIFS password):

    ```
    $ sudo gedit /etc/cifspw​username=<user>password=<password>
    ```
4.  Allow only root access to the credentials files:

    ```
    $ sudo chmod 0600 /etc/cifspw
    ```
5.  Add an entry to the `fstab`:

    ```
    $ sudo gedit /etc/fstab
    ```
6.  The `fstab` entry is the single line:

    ```
    //oscarcifs.ccv.brown.edu/<user> /mnt/rdata cifs credentials=/etc/cifspw,vers=2.0,nounix,uid=<localUser> 0 0
    ```
7. Change `<localUser>` to the login used on your Linux workstation.
8.  Mount the share:

    ```
    $ mount -a‌
    ```

## Windows <a href="#windows" id="windows"></a>

1. Right-click "Computer" and select "Map Network Drive".
2. Select an unassigned drive letter.
3. Enter `\\oscarcifs.ccv.brown.edu\<user>` as the Folder.
4. Check "Connect using different credentials"
5. Click "Finish"
6. Enter your CCV user name as "ccv\username" (no quotes)
7. Enter your CIFS password and click "OK".

You can now access your home directory through Windows Explorer with the assigned drive letter. Your data and scratch directories are available as the subdirectories (`~/data` and `~/scratch`) of your home directory.
