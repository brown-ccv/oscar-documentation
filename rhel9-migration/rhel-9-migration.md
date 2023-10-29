---
description: This page describes RHEL9 migration happening in January 2023
---

# RHEL-9 Migration

1. **What is the reason for this maintenance?**

Oscar's current operating system, RHEL-7, and its maintenance support phase will come to an end in June 2024. So Oscar is being upgraded to latest RedHat Enterprise Linux RHEL-9.2

{% hint style="info" %}
Due to the new kernel and glibc majority of applications will break.&#x20;
{% endhint %}

2. **We are also introducing a bunch of new features:**

* **Upgraded OS -** Newer kernel and enhanced security patches
* **Power Saving Mode:** Idle nodes in batch partition enter power-saving mode (\~40W). And resume latency-performance mode before jobs start
* **GPU Direct Storage:** GDS enables a direct data path for direct memory access (DMA) transfers between GPU memory and storage, which avoids a bounce buffer through the CPU. This direct path increases system bandwidth and decreases the latency and utilization load on the CPU.
* **SLURM Upgrade:** We have tuned the scheduler to provide much higher throughput. Now supports `json` and `yaml` formatting for all slurm commands
* **SPACK & LMOD -** Newer industry standard for installing and managing applications on Oscar. We now support multple shells `bash,zsh & fish` etc

<div align="left">

<figure><img src="../.gitbook/assets/DALL·E 2023-10-29 05.56.22 - Photo of a modern data center with rows of servers glowing in blue. Overlaying the scene is a leafy vine, symbolizing nature, winding its way through .png" alt="" width="375"><figcaption><p>Idle nodes enter power saving mode automatically </p></figcaption></figure>

 

<figure><img src="../.gitbook/assets/Screenshot 2023-10-29 at 6.52.18 AM.png" alt=""><figcaption><p>Unified Storage across all OIT data platforms</p></figcaption></figure>

 

<figure><img src="../.gitbook/assets/Screenshot 2023-10-29 at 6.12.44 AM.png" alt=""><figcaption><p>GPUDirect Storage - Lower laency &#x26; Higher Bandwidth for IO</p></figcaption></figure>

</div>

3. **What are exact version changes?**

<table><thead><tr><th width="199.33333333333331">Component</th><th width="300">Current Version</th><th>New Version</th></tr></thead><tbody><tr><td>Operating System</td><td>RHEL/7.9</td><td>RHEL/9.2</td></tr><tr><td>Kernel</td><td>3.10.0-1160.76.1</td><td>5.14.0-284.11.1</td></tr><tr><td>GLIBC</td><td>2.17-326</td><td>2.34-60</td></tr><tr><td>SLURM </td><td>22.05.7</td><td>23.02.6</td></tr><tr><td>Package Manager</td><td>PyModules</td><td>SPACK</td></tr></tbody></table>





