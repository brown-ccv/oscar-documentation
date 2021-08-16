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

3. Edit the `~/.ssh/config` file on your local machine, add the following lines. Replace `<username>` with your Oscar username. 

```text
Host oscar2
 HostName oscar2
 User <username>
 ProxyCommand ssh -q -W %h:%p desktop.ccv.brown.edu
```

4.  In VSCode, select  **Remote-SSH: Connect to Host…** and after the list populates select `oscar2`

{% hint style="info" %}
 Username and Password will be the same as used for SSH access.
{% endhint %}

5. After a moment, VS Code will connect to the SSH server and set itself up.





