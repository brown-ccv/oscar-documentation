---
description: This page describes RHEL9 migration happening in January 2023
---

# RHEL-9 Migration

1. **What is the reason for this maintenance?**

Oscar's current operating system, RHEL-7, and its maintenance support phase will come to an end in June 2024. So Oscar is being upgraded to latest RedHat Enterprise Linux RHEL-9.2.

2. **We are also introducing a bunch of new features:**

We are introducing a bunch of new features:

* **Upgraded OS -** Newer kernel and enhanced security patches. Beware, some applications might break due to major changes in core libraries.
* **Introducing GPU Direct Storage:** Applications can bypass the CPU/Host memory, enabling GPUs to perform IP operations directly from storage layer
* **SLURM Upgrade:** We have tuned the scheduler to provide much higher throughput.
* **Power Saving Mode:** Idle nodes will automatically go into power-saving mode. And resume latency-performance mode when jobs are scheduled
* **SPACK & LMOD -** Newer industry standard for installing and managing applications on Oscar. We now support multple shells bash/zsh/fish etc.&#x20;

**What's the change?**

| Component        | Current Version  | New Version     |
| ---------------- | ---------------- | --------------- |
| Operating System | RHEL/7.9         | RHEL/9.2        |
| Kernel           | 3.10.0-1160.76.1 | 5.14.0-284.11.1 |
| GLIBC            | 2.17-326         | 2.34-60         |
| SLURM            | 22.05.7          | 23.02.6         |
| Package Manager  | PyModules        | SPACK           |

Due to the new kernel and glibc majority of applications will break.&#x20;



