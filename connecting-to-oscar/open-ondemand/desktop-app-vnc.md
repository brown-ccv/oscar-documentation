# Desktop App (VNC)

The Desktop app on Open OnDemand is a replacement for the older VNC Java client. This app allows you to launch a Desktop GUI on Oscar.

{% hint style="info" %}
Advanced users looking for more resources can try the [Desktop (Advanced) app](desktop-app-vnc.md#desktop-advanced).
{% endhint %}

{% hint style="danger" %}
Do not load any `anaconda` module in your .modules or .bashrc file. These modules prevent Desktop sessions from starting correctly. You may load them inside the Desktop session.
{% endhint %}

## Launching Desktop App (VNC)

### 0. Launch Open OnDemand

Click [here](https://ood.ccv.brown.edu) to launch Open OnDemand (OOD) and log in with you Brown Credentials.

### 1. Select the **`Desktop`** option in **`Interactive Apps`** dropdown list:

<figure><img src="../../.gitbook/assets/image (28).png" alt=""><figcaption></figcaption></figure>

### 2. Choose the resource option:

<figure><img src="../../.gitbook/assets/image (10).png" alt=""><figcaption></figcaption></figure>

### 3. Wait and Launch!

<figure><img src="../../.gitbook/assets/image (23).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
You may change the **Image Quality** if your internet connection is bad. Image quality can be changed in the middle of the session.
{% endhint %}

<div align="center"><figure><img src="../../.gitbook/assets/image (27).png" alt=""><figcaption></figcaption></figure></div>

## Reconnecting to session

A session may get disconnected if it is not active for a while:

<figure><img src="https://lh3.googleusercontent.com/yPyX09joKK5Ze-uGNjgXiOyN3x0nJMk_dWijkmboM8Gtkocx23LY3-7rBvod6hQ6s3rnqgdsY65kRqhqGuIUl2wrCp2Kjuz0pVs4OcdXB5c0rJNAH4sHNLv7x-AWFANRu_coQh2-pmW78vf9_JEyGOLwXp0WH2Bl8r2kad3kORuU1yemlyUPPC584mfqM_yh=s2048" alt=""><figcaption></figcaption></figure>

If the session **disconnects** as shown above, please **don't** click the "Connect" button on the screen. You may go to **Open OnDemand** page and click “**My Interactive Sessions**” to find the session again:

<figure><img src="../../.gitbook/assets/image (20).png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Please don’t launch a new session if you have an existing session. You cannot launch two desktop sessions at the same time.
{% endhint %}

{% hint style="info" %}
Sometimes, the “My interactive Sessions” button is shortened to look like:

<img src="../../.gitbook/assets/image (14).png" alt="" data-size="line">
{% endhint %}

## Copying and pasting text

{% tabs %}
{% tab title="Google Chrome" %}
If you are using Google Chrome, switch on the "Clipboard" permission and you can directly copy and paste text into the OOD Desktop from any other program.

1. Click the Lock icon to the left of the URL
2. Switch on the "Clipboard" permission

![](<../../.gitbook/assets/permissions (1).png>)
{% endtab %}

{% tab title="Other Browsers" %}
Click the side panel button on the extreme left hand side of the screen.

* To copy text into the Desktop session, paste the data into the Clipboard. It will be available to paste inside the Desktop session.
* To copy text from the Desktop session, open the Clipboard. The copied text will be displayed inside it. You can select and copy the text inside the Clipboard and paste it to an external program.



<figure><img src="../../.gitbook/assets/image (5) (2).png" alt=""><figcaption></figcaption></figure>
{% endtab %}
{% endtabs %}

## Desktop (Advanced)

If you need **more** or **different** **resources** than those available from the default Desktop session, you should use the Advanced Desktop app. Resources requested here count against the resources allowed for your Oscar account.

### 1. Select the Desktop (Advanced) app under Interactive Apps.

<figure><img src="../../.gitbook/assets/adv desktop.png" alt=""><figcaption></figcaption></figure>

### 2. Choose required resources

Fill out the form with your required resources.&#x20;

* **Account**: Enter your **condo** account name. If you are not a member of a condo, leave this **blank**
* **Desktop Environment**: Choose **XFCE**. KDE works for CPU jobs, but may not be able to use GPU acceleration correctly.
* **Number of hours**: Choose appropriately. Your Desktop session will end abruptly after this time has lapsed. Requesting a very long session will result in a lower job priority.
* **Partition**: Equivalent to `#SBATCH -p` option. The desktop session will run on this partition.
* **Num Cores:** Equivalent to the `#SBATCH -n` option.
* **Num GPUs**: Equivalent to the `#SBATCH --gres=gpu:` option. This field is **ignored** if the partition does not have any GPU nodes, e.g. batch
* **Memory (GB):** Equivalent to the  `#SBATCH --mem=` option.
* **Reservation:** Equivalent to the `#SBATCH --reservation=` option. Leave **blank** if you are not using a reservation.&#x20;

### 3. Wait and Launch!

Wait and launch this session like the regular Desktop session.



## Modify the Terminal App

Inside the Desktop session , click on Applications in the top left

Applications -> Settings -> Default Applications

<figure><img src="../../.gitbook/assets/Screenshot 2024-01-09 at 4.20.08 PM.png" alt=""><figcaption></figcaption></figure>

In the new Window, click on the "Utilities" tab and choose "Gnome Terminal" in the drop down menu under "Terminal Emulator"

<figure><img src="../../.gitbook/assets/Screenshot 2024-01-09 at 4.20.30 PM.png" alt=""><figcaption></figcaption></figure>

Then click on "Applications -> Terminal Emulator" to launch the terminal:

<figure><img src="../../.gitbook/assets/image (3).png" alt=""><figcaption></figcaption></figure>

#### If the steps mentioned above do not work:

1. Close the Desktop session
2. Inside a terminal (outside the Desktop session), run this command:

`rm -r ~/.ood_config`

3. Start a new desktop session .

### Change the Terminal icon for launcher panel

Please drag and drop the "Terminal Emulator" icon from the "Applications" menu to the launcher panel at the bottom of the screen, it will be inserted to the launcher panel:

<figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

Then click on "Create Launcher":

<figure><img src="../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

You may remove the old terminal icon after adding the new icon:

<figure><img src="../../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

####
