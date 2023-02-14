---
description: Access Oscar's file-system remotely from VSCode.
---

# Remote IDE (VSCode)

## VSCode one-time setup

{% hint style="info" %}
To use VSCode you must be on a Brown compliant network or connected to the VPN. Please install the [Brown VPN client](https://vpn.brown.edu/) before proceeding.&#x20;
{% endhint %}

To use VSCode you will need to be connected to the VPN. Please install the [Brown VPN client](https://vpn.brown.edu) before proceeding.

1. Install the [Remote Development extension pack](https://aka.ms/vscode-remote/download/extension) for VSCode:

<figure><img src="../../.gitbook/assets/vscode_install.png" alt=""><figcaption></figcaption></figure>

2\. Open VSCode settings and uncheck symlink:

{% tabs %}
{% tab title="Mac" %}
**Code** > **Preferences** > **Settings**
{% endtab %}

{% tab title="Windows / Linux" %}
**File** > **Preferences** > **Settings**
{% endtab %}
{% endtabs %}

Search for `symlink` and make sure the symlink searching is unchecked

![](../../.gitbook/assets/screen-shot-2021-07-27-at-9.52.23-am.png)

3\. Make sure you have set up passwordless SSH authentication to Oscar. If you haven't, please refer to this [documentation page](https://docs.ccv.brown.edu/oscar/connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh).

{% hint style="info" %}
If you have **Windows Subsystem for Linux (WSL)** installed in your computer, you need to follow the instructions for Windows (PowerShell).
{% endhint %}

4\. Edit the `config` file:

{% tabs %}
{% tab title="Mac / Linux" %}
The `config` file is located at:

`~/.ssh/config`
{% endtab %}

{% tab title="Windows" %}
The `config` file is located at:

```
C:\Users\<uname>\.ssh\config
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
If you have **Windows Subsystem for Linux (WSL)** installed in your computer, you need to follow the instructions for Windows (PowerShell).&#x20;
{% endhint %}

Edit the `config` file on your local machine, add the following lines. Replace `<username>` with your Oscar username.&#x20;

```
# Jump box with public IP address
Host jump-box
    HostName poodcit4.services.brown.edu
    User <username>

# Target machine with private IP address
Host ccv-vscode-node
    HostName node1103
    User <username>
    ProxyCommand ssh -q -W %h:%p jump-box
```

5\. In VSCode, select  **Remote-SSH: Connect to Host…** and after the list populates select `ccv-vscode-node`

![](../../.gitbook/assets/screen-shot-2021-09-08-at-10.24.42-am.png)

<figure><img src="../../.gitbook/assets/vscode_setup.png" alt=""><figcaption></figcaption></figure>

6\. One-time installation and set up of VSCode

{% tabs %}
{% tab title="Mac / Linux" %}
After a moment, VS Code will connect to the SSH server and set itself up.
{% endtab %}

{% tab title="Windows" %}
After a moment, VS Code will connect to the SSH server and set itself up. You might see the Firewall prompt, please click allow.&#x20;

![Allow Firewall connections](../../.gitbook/assets/capture\_5.png)
{% endtab %}
{% endtabs %}

## Reconnect to VSCode

1. Click the green icon "Open a Remote Window" in the bottom left corner of VSCode Window. Then click "Connect to Host" in the drop down list.

<figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

2\. Select the `ccv-vscode-node` option to connect to Oscar.&#x20;

<figure><img src="../../.gitbook/assets/vscode_setup.png" alt=""><figcaption></figcaption></figure>
