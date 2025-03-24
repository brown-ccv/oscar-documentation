---
description: >-
  You can access Oscar's file-system remotely from Visual Studio Code (VS Code).
  Note that access of Oscar from VS Code is still considered experimental, and
  as such, 24x7 support is not available.
---

# Remote IDE (VS Code)

## VS Code one-time setup

{% hint style="info" %}
To use VS Code you must be on a Brown compliant network or connected to the VPN. Please install the [Brown VPN client](https://vpn.brown.edu/) before proceeding.&#x20;
{% endhint %}

{% hint style="warning" %}
**September 10, 2023:** Some users have reported issues while connecting to the Oscar VS Code remote extension. This is due to a recent change introduced by VS Code. To address this issue

Ctrl (cmd on Mac) + Shift + P > Remote-SSH: Settings

Disable the Remote.SSH: Use Exec Server option

<img src="../../.gitbook/assets/image (1) (1).png" alt="" data-size="original">
{% endhint %}

To use VS Code you will need to be connected to the VPN. Please install the [Brown VPN client](https://vpn.brown.edu) before proceeding.

1. Install the [Remote Development extension pack](https://aka.ms/vscode-remote/download/extension) for VS Code:

<figure><img src="../../.gitbook/assets/vscode_install.png" alt=""><figcaption></figcaption></figure>

2\. Open VS Code settings and uncheck symlink:

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
    HostName vscode1
    User <username>
    ProxyCommand ssh -q -W %h:%p jump-box
```

5. _**September 10, 2023:**_ Some users have reported issues while connecting to the Oscar VSCode remote extension. This is due to a recent change introduced by VSCode. To address this issue

```
Ctrl (cmd on Mac) + Shift + P > Remote-SSH: Settings
Disable the Remote.SSH: Use Exec Server option
```

6. In VS Code, select  **Remote-SSH: Connect to Host…** and after the list populates select `ccv-vscode-node`

![](../../.gitbook/assets/screen-shot-2021-09-08-at-10.24.42-am.png)

<figure><img src="../../.gitbook/assets/vscode_setup.png" alt=""><figcaption></figcaption></figure>

6\. Install and set up of VS Code

{% tabs %}
{% tab title="Mac / Linux" %}
After a moment, VS Code will connect to the SSH server and set itself up.
{% endtab %}

{% tab title="Windows" %}
After a moment, VS Code will connect to the SSH server and set itself up. You might see the Firewall prompt, please click allow.&#x20;

![Allow Firewall connections](../../.gitbook/assets/capture_5.png)
{% endtab %}
{% endtabs %}

7. Configure VS Code

{% hint style="info" %}
Important: Please run the following to add a settings.json file to your config. This is because the filewatcher and file searcher (rg) indexes all the files you have access to in your workspace. If you have a large dataset (e.g. machine learning) this can take a lot of resources on the vscode node.
{% endhint %}

Connect to VS Code first.

You can either create a symlink via the `ln` command below,

```
cp -v /gpfs/runtime/opt/vscode-server/ccv-vscode-config/settings.json /users/$USER/.vscode-server/data/Machine/settings.json
```

or manually create `/users/$USER/.vscode-server/data/Machine/settings.json` file with following contents

```
{
    "files.watcherExclude": {
        "**/.git/objects/**": true,
        "**/.git/subtree-cache/**": true,
        "**/node_modules/**": true,
        "/usr/local/**": true,
        "/gpfs/home/**": true,
        "/gpfs/data/**": true,
        "/gpfs/scratch/**": true
    },
    "search.followSymlinks": false,
    "search.exclude": {
        "**/.git/objects/**": true,
        "**/.git/subtree-cache/**": true,
        "**/node_modules/**": true,
        "/usr/local/**": true,
        "/gpfs/home/**": true,
        "/gpfs/data/**": true,
        "/gpfs/scratch/**": true
    }
}
```

## Reconnect to VS Code

1. Click the green icon "Open a Remote Window" in the bottom left corner of VS  Code Window. Then click "Connect to Host" in the drop down list.

<figure><img src="../../.gitbook/assets/image (2) (1).png" alt=""><figcaption></figcaption></figure>

2\. Select the `ccv-vscode-node` option to connect to Oscar.&#x20;

<figure><img src="../../.gitbook/assets/vscode_setup.png" alt=""><figcaption></figcaption></figure>
