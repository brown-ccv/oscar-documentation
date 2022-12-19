---
description: Accessing VSCode from Non-Brown compliant networks
---

# From Non-compliant Networks (2-FA)

{% hint style="info" %}
This guide is only for users connecting from Non-Brown Compliant Networks. 2-FA is mandatory.
{% endhint %}

1. Install the [Remote Development extension pack](https://aka.ms/vscode-remote/download/extension) for VSCode
2. Open VSCode settings&#x20;

* On Windows/Linux - **File** > **Preferences** > **Settings**
* On macOS - **Code** > **Preferences** > **Settings**

Search for `symlink` and make sure the symlink searching is unchecked

![](../../.gitbook/assets/screen-shot-2021-07-27-at-9.52.23-am.png)

3\. Under VSCode settings, search for <mark style="color:blue;">remote ssh timeout</mark> and manually enter a timeout value i.e. <mark style="color:blue;">50s</mark>. It should give you enough time to complete 2-Factor Authentication.

![](<../../.gitbook/assets/Screen Shot 2022-03-28 at 9.15.51 AM.png>)

4\. Edit the `~/.ssh/config` file on your local machine, add the following lines. Replace `<username>` with your Oscar username.

```
# Jump box with public IP address
Host jump-box
  HostName ssh8.ccv.brown.edu
  User <username>
# Target machine with private IP address
Host ccv-vscode-node
  HostName node1103
  User <username>
  ProxyCommand ssh -q -W %h:%p jump-box
```

6\. In VSCode, select  **Remote-SSH: Connect to Host…** and after the list populates select `login-node`

![](../../.gitbook/assets/screen-shot-2021-09-08-at-10.24.42-am.png)

<figure><img src="../../.gitbook/assets/vscode_setup.png" alt=""><figcaption></figcaption></figure>

