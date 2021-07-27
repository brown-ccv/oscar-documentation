---
description: Access Oscar's file-system remotely from VSCode.
---

# Remote IDE

## VSCode

1. Install the [Remote Development extension pack](https://aka.ms/vscode-remote/download/extension) for VSCode
2. Open VSCode settings 

* On Windows/Linux - **File** &gt; **Preferences** &gt; **Settings**
* On macOS - **Code** &gt; **Preferences** &gt; **Settings**

Search for `symlink` and make sure the symlink searching is unchecked

![](../.gitbook/assets/screen-shot-2021-07-27-at-9.52.23-am.png)

3.  In VSCode, select  **Remote-SSH: Connect to Host…** and enter

```
<username>@desktop.ccv.brown.edu
```

{% hint style="info" %}
 Username and Password will be the same as used for SSH access.
{% endhint %}

3. After a moment, VS Code will connect to the SSH server and set itself up





