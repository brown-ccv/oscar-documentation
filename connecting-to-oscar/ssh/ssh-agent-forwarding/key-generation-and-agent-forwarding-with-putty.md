---
description: >-
  SSH Agent Forwarding on a Windows system using PuTTY, with an example
  application to git.
---

# Windows (PuTTY)

## Agent Forwarding with PuTTY

1. Once adding your private key to Pageant, open PuTTY and navigate to the Auth menu.

![](<../../../.gitbook/assets/image (3).png>)

2\. Check the 'Allow agent forwarding' checkbox, and return to the Session menu.

![](<../../../.gitbook/assets/image (7).png>)

3\. Enter the Host Name you usually use to connect to Oscar, and click 'Open'.&#x20;

4\. Entering your password. If you have ssh keys setup on your local computer to connect to GitHub, you can confirm your ssh-agent was properly forwarded by checking GitHub . If the ssh command fails, your agent has not been properly forwarded.

```
ssh -T git@github.com
```

```
Hi JaneDoe! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
```
