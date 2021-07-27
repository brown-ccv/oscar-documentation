---
description: Access Oscar's file-system remotely from VSCode.
---

# Remote IDE

## VSCode

1. Install the [Remote Development extension pack](https://aka.ms/vscode-remote/download/extension) for VSCode.
2. Edit the settings file and add the following string. 

```
"search.followSymlinks": false
```

 Depending upon your platform the `settings.json` the file will be located in:

* **macOS** `$HOME/Library/Application Support/Code/User/settings.json`
* **Windows** `%APPDATA%\Code\User\settings.json`
* **Linux** `$HOME/.config/Code/User/settings.json`

3.  In VSCode, select  **Remote-SSH: Connect to Host…** and enter

```
<username>@desktop.ccv.brown.edu
```

{% hint style="info" %}
 Username and Password will be the same as used for SSH access.
{% endhint %}

3. After a moment, VS Code will connect to the SSH server and set itself up.





