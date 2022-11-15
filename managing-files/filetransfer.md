# Transferring Files to and from Oscar

There are several ways to move files between your machine and Oscar. Which method you choose will depend on how much data you need to move and your personal preference for each method.

1. [SMB](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/cifs)
2. [Command line](filetransfer.md#2-command-line) (scp)
3. [GUI application](filetransfer.md#3-gui-programs-for-transferring-files-using-the-scp-or-sftp-protocol)
4. [Globus online](filetransfer.md#4-globus-online) (best for large transfers)
5. [LFTP](filetransfer.md#5-lftp)

## 1. SMB

You can drag and drop files from your machine to the Oscar filesystem via SMB. This is an easy method for a small number of files. Please refer to this [page](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/cifs) for mounting filesystem via SMB.

## 2. Command line

**Mac and Linux**

**SCP**

You can use `scp` to transfer files. For example to copy a file from your computer to Oscar:

```
scp /path/to/source/file <username>@ssh.ccv.brown.edu:/path/to/destination/file
```

To copy a file from Oscar to your computer:

```
scp <username>@ssh.ccv.brown.edu:/path/to/source/file /path/to/destination/file
```

**RSYNC**

You can use `rsync` to sync files across your local computer to Oscar:

```
rsync -azvp --progress path/to/source/directory <username>@ssh.ccv.brown.edu:/path/to/destination/directory
```

**Windows** On Windows, if you have PuTTY installed, you can use it's `pscp` function from the terminal.

## 3. GUI programs for transferring files using the `sftp`  protocol and `transfer.ccv.brown.edu` hostname

* **DUO is required if you are not connected to approved networks, e.g., home network**
  * **There is no interactive terminal message but your Phone will get a prompt automatically**&#x20;
* **DUO is NOT required if you are connected to approved Brown networks**
  * **A personal Windows computer must have**[ **CrowdStrike**](https://www.brown.edu/information-technology/software/catalog/crowdstrike-home) **installed in order to be on approved Brown networks.**

In general, you can specify the following for your GUI programs:

* Protocol: SFTP
* Host: transfer.ccv.brown.edu
* User: your Oscar username
* Password: your Brown password

### 3.1 [WinSCP](https://winscp.net/eng/index.php) for Windows

#### 3.1.1 Limit Concurrent Transfer and Change Reconnect Options

Click the `Options`and then `Preferences` menu in WinsCP. In the poped up window, click `Transfer` and then `Background` to  (Figure 1)

* change `Maximal number of transfers at the same time` to 1
* uncheck `Use multiple connections for single transfer`

<figure><img src="../.gitbook/assets/winscp-max-connection.png" alt=""><figcaption><p>Figure 1 WinSCP Maximal Transfers</p></figcaption></figure>

click `Endurace` to (Figure 2)

* set `Automatically reconnect session` to 5 seconds
* uncheck Automatically reconnect session, if it stalls
* set `Keep reconnection for` to 10 seconds

<figure><img src="../.gitbook/assets/winscp-reconnect.png" alt=""><figcaption><p>Figure 2 WinSCP Reconnect</p></figcaption></figure>

#### 3.1.2 Add a New Site

![Figure 3 WinSCP Session Creation](<../.gitbook/assets/image (11).png>)

### 3.2 FileZilla

#### 3.2.1. Disable Timeout

Click the `Edit` menu and then select the `Settings` submenu, and then change the `Timeout in seconds` to 0 to disable, as shown in Figure 2

![Figure 4 Disable Timeout](../.gitbook/assets/filezilla-settings.png)

#### 3.2.2 Add a New Site

**Open the Site Manager as show in Figure 5.**

![Figure 5 Open Site Manager](../.gitbook/assets/filezilla-site-manager.png)

**Click the 'New Site' button to add a new site, as shown in Figure 4:**

![Figure 6 New Site](../.gitbook/assets/filezilla-new-site.png)

**Limit the number of simultaneous connections to 1, as shown in Figure 5.**

![Figure 7 Limit Simultaneous Connections](../.gitbook/assets/filezilla-concurrent-connection.png)

Click the 'Connect' button to connect to Oscar and transfer files.

### 3.3 Cyberduck

![Figure 8 Cyberduck Connection](../.gitbook/assets/cyberduck-connection.png)

You may see a popup window on 'Unknown Fingerprint'. You just need to check the 'Always' option and click 'Allow'. This is windows should not pop up again unless the transfer server is changed again.

![Figure 9 Unknown Fingerprint](../.gitbook/assets/cyberduck-unknown-fingerprint.png)

## 4. Globus online

[Globus](https://www.globus.org) is a secure, reliable research data management service. You can move data directly to Oscar from anothe Globus endpoint. Oscar has one Globus endpoint:

```
BrownU_CCV_Oscar
```

If you want to use Globus Online to move data to/from you own machine, you can install Globus Connect Personal. For more instructions on how to use Globus, see the [Oscar section](https://docs.ccv.brown.edu/globus/creating-endpoints/using-globus-with-oscar) in the Globus documentation.

## 5. LFTP

[LFTP](https://lftp.yar.ru/) is a sophisticated file transfer program supporting a number of network protocols (ftp, http, sftp, fish, torrent). It has bookmarks, a built-in mirror command, can transfer several files in parallel and was designed with reliability in mind. You can use the `LFTP` module from Oscar to transfer data from any (S)FTP server you have access to directly to Oscar. Below are the main `LFTP` commands to get you started:

```
module load lftp  # To load the LFTP module from Oscar
lftp -u login,passwd MyAwesomeUrl  # To connect to your (S)FTP server
ls   # To list files on the (S)FTP server
!ls  # To list files in your directory on Oscar
get MyAwesomeFile  # To download a single file
mirror # To download everything as is from the server
mirror --directory=/name_of_directory/ # To download a specific directory
```
