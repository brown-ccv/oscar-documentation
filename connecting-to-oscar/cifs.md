---
title: CIFS
date: 2019-01-31 22:06:09 +0000
project: Oscar
section: Connecting to Oscar
weight: 0
---

# SMB (Local Mount)

CCV users can access their home, data, and scratch directories as a local mount on their own Windows, Mac, or Linux system using the Common Internet File System (CIFS) protocol (also called Samba). This allows you to use applications on your machine to open files stored on Oscar. It is also a convenient way to move files between Oscar and your own machine, as you can drag and drop files.

{% hint style="info" %}
To use SMB you will need to be connected to the VPN. Please install the [Brown VPN client](https://vpn.brown.edu) before proceeding.
{% endhint %}

{% hint style="info" %}
A user's Windows machine is required to have [Crowdstrike Home](https://www.brown.edu/information-technology/software/catalog/crowdstrike-home) installed on the Windows machine to use SMB.
{% endhint %}

Users should ensure that the date and time are set correctly on their machine. Now you are ready to mount your CCV directories locally. Instructions for each of the various operating systems are given below.

{% hint style="info" %}
Since the Jun'23 maintenance, you do not need to put your username in the Server address. Please update your server address if you see issues connecting to Oscar.
{% endhint %}

## macOS

1.  In the Finder, press "Command + K" or select "Connect to Server..."

    from the "Go" menu.
2.  For "Server Address", enter `smb://smb.ccv.brown.edu/<volume>/`

    and click "Connect".

    * To access your Home directory, enter`smb://smb.ccv.brown.edu/home/`
    * To access your Scratch space, enter`smb://smb.ccv.brown.edu/scratch/`
    * To access your Data directory, enter`smb://smb.ccv.brown.edu/data/<pi_group>/`
      * To check your PI group run 'groups' command.
3. Enter your AD username and password. If you have trouble connecting, enter `<username>@ad.brown.edu` as your Username
4. You may choose to add your login credentials to your keychain so you will not need to enter this again.

**Optional.** If you would like to automatically connect to the share at startup:

1. Open "System Preferences" (leave the Finder window open).
2. Go to "Accounts" > "(your account name)".
3. Select "Login Items".
4. Drag your data share from the "Finder" window to the "Login Items" window.

## Linux

1.  Install the `cifs-utils` package:

    ```bash
    CentOS/RHEL:   $ sudo yum install cifs-utils
    Ubuntu:        $ sudo apt-get install cifs-utils
    ```
2.  Make a directory to mount the share into:

    ```bash
    $ sudo mkdir -p /mnt/rhome /mnt/rscratch /mnt/rdata
    ```
3.  Create a credentials file and add your AD account information:

    ```bash
    $ sudo gedit /etc/cifspw

    username=user
    password=password
    ```
4.  Allow only root access to the credentials files:

    ```bash
    $ sudo chmod 0600 /etc/cifspw
    ```
5.  Add an entry to the`fstab`:

    ```bash
    $ sudo gedit /etc/fstab
    ```
6.  The`fstab`entry should be following:

    ```bash
    # Home
    //smb.ccv.brown.edu/home/ /mnt/rhome cifs credentials=/etc/cifspw,nounix,uid=<localuser>,domain=ad.brown.edu 0 0

    # Scratch 
    //smb.ccv.brown.edu/scratch/ /mnt/rscratch cifs credentials=/etc/cifspw,nounix,uid=<localuser>,domain=ad.brown.edu 0 0

    # Data
    //smb.ccv.brown.edu/data/<pi_group>/ /mnt/rdata cifs credentials=/etc/cifspw,nounix,uid=<localUser>,domain=ad.brown.edu 0 0
    ```
7. Replace`<localUser>`to the login used on your Linux workstation, and replace \<user> and \<pi\_group> with your Oscar username and PI group, respectively.
8.  Mount the share:

    ```bash
    $ mount -a
    ```

## Windows

1. Right-click "Computer" and select "Map Network Drive"
2. Select an unassigned drive letter
3. To mount specific volumes:

* For Home directory, enter`\\smb.ccv.brown.edu\home\`
* For Scratch space, enter`\\smb.ccv.brown.edu\scratch\`
* For Data directory, enter`\\smb.ccv.brown.edu\data\<pi_group>\`
  * To check your`<pi_group>`run 'groups' command.

1. Check "Connect using different credentials"
2. Click "Finish"
3. Enter your AD user name. If your computer is not in Active Directory (AD), you should enter your username in the format **`ad\username`**
4. Enter your AD password and click "OK"

You can now access your home directory through Windows Explorer with the assigned drive letter. Your data and scratch directories are available as the subdirectories (`~/data` and `~/scratch`) of your home directory.
