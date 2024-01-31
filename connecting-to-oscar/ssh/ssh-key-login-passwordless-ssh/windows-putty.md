# Windows(PuTTY)

## Key Generation & Setup

1. Open PuTTYgen (this comes as part of the [PuTTY](https://www.chiark.greenend.org.uk/\~sgtatham/putty/latest.html) package), change the 'Number of bits in a generated key:' to 4096 (recommended), then click 'Generate'

![](<../../../.gitbook/assets/image (4) (1) (1).png>)

2\. Move your cursor around randomly in order to "salt" your key, while the key is being generated. Once the key is generated, you should see something like this:

![](<../../../.gitbook/assets/image (6).png>)

3\. Replace the text in the 'Key comment:' field with something recognizable and enter a passphrase in the two fields below.&#x20;

4\. Copy the text in the 'Public key for pasting...' field (the text continues past what is displayed) and paste it wherever the public key is needed. If you are using GitHub, you can now create a new SSH key in your Personal Settings and paste this text into the 'Key' field.&#x20;

5\. Click on 'Save private key' and select a logical/recognizable name and directory for the file. Your private key is saved in the selected file.

6\. Open Pageant (also part of the PuTTY package). If a message saying "Pageant is already running" is displayed, open your system tray and double click on the Pageant icon.

{% hint style="info" %}
To open your system tray, click on the up arrow (looks like: ^ ) icon at the bottom right of your screen (assuming your taskbar is at the bottom of your screen).
{% endhint %}

![](<../../../.gitbook/assets/image (5) (1).png>)

7\. Click on 'Add Key' and select the file you saved when generating your key earlier (Step 5). If it is requested, enter the passphrase you created at Step 3 to complete the process.

{% hint style="info" %}
In order to not have to add the key to Pageant after every time your machine reboots, you can add the key file(s) to your Windows startup folder (the directory for the current user is C:\Users\\\[User Name]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup). You may still be prompted to enter the passphrase after a reboot, but you will not have to find and add the key to Pageant every time.
{% endhint %}
