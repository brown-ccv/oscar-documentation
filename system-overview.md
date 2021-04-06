# System Hardware

## Oscar Specifications

| Category | Specifications |
| :--- | :--- |
| Computer Nodes | 445 |
| GPU Nodes | 27 |
| Login Nodes | 2 |
| Large Memory Nodes \(&gt;512GB\) | 4 |
| Total CPU Cores | 13100 |
| Total GPUs | 199 |
| Total Storage \(GPFS Filesystem\) | 3.27PB |
| Operating Systems | RedHat EL 7.3 \(Linux\) |
| Job Scheduler | Slurm Workload Manager |

## Compute Nodes

Oscar has 425 compute nodes including 27 GPU nodes in the batch, gpu, gpu-he, vnc, bigmem, and debug partitions.

{% hint style="info" %}
Nodes could be down for repair. Use the `sinfo` command to check node status on Oscar.
{% endhint %}

### batch

The batch partition is for programs/jobs which need neither GPUs nor large memory. There are 362 nodes in the batch partition.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Model</th>
      <th style="text-align:left">Cores per Node</th>
      <th style="text-align:left">Memory (GB)</th>
      <th style="text-align:left">Node Count</th>
      <th style="text-align:left">GPU (GPU Memory)</th>
      <th style="text-align:left">Nodes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Intel Broadwell (ES-2650 v3)</td>
      <td style="text-align:left">20</td>
      <td style="text-align:left">125</td>
      <td style="text-align:left">4</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node906, node910,</p>
        <p>node925-926</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Broadwell (ES-2650 v4)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">125</td>
      <td style="text-align:left">51</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1003-node1053</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">187</td>
      <td style="text-align:left">44</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1101 - node1120, node1122 - node1128,</p>
        <p>node1161 - node 1164,</p>
        <p>node1314,</p>
        <p>node1317-node1328</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">93</td>
      <td style="text-align:left">47</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1121,</p>
        <p>node1129 - node1160, node1301 - node1313,</p>
        <p>node1315</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade Lake (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">376</td>
      <td style="text-align:left">40</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1333 - node1364,</p>
        <p>node1601 - node1608</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade Lake (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">187</td>
      <td style="text-align:left">100</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1613-1656,</p>
        <p>node1701-1756</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade Lake (Platinum 8268)</td>
      <td style="text-align:left">48</td>
      <td style="text-align:left">376</td>
      <td style="text-align:left">76</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1801-1864, node1901-1912</td>
    </tr>
    <tr>
      <td style="text-align:left">Total</td>
      <td style="text-align:left">10960</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">332</td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>

### bigmem

The bigmem partition is for programs/jobs which require large memory. There are 4 nodes in the bigmem partition.

| Model | Cores per Node | Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Cascade Lake \(Gold 6242\) | 32 | 2096 | 2 | n/a | node1609-node1610 |
| Intel Cascade Lake \(Gold 6242\) | 32 | 754 | 2 | n/a | node1611-node1612 |
| Total | 128 |  | 4 |  |  |

### debug

The debug partition is for users to debug programs/jobs. There are 7 nodes in the debug partition. 

| Model | Cores per Node | Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Haswell \(E5-2650 v3\) | 24 | 125 | 7 | n/a | node970-node976 |
| Total | 168 |  | 7 |  |  |

### gpu

The gpu partition is for programs/jobs which require GPUs. There are 19 nodes \(145 GPUs\) in the gpu partition.

| Model | Cores per Node | Usable Memory \(GB\) | Node Count | GPUs Per Node | GPU \(GPU Memory\) | Nodes | X Server |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Skylake \(Gold 5122\) | 8 | 93 | 4 | 4 | titanv \(12G\) | gpu1201 - gpu1204 | Y |
| Intel Skylake \(Gold 5122\) | 8 | 187 | 1 | 4 | p100 \(12G\) | gpu1209 | Y |
| Intel Cascade Lake \(Gold 6142\) | 32 | 376 | 2 | 5 | titanrtx \(24G\) | gpu1401 -  gpu1402 | Y |
| Intel Skylake \(Gold 6126\) | 24 | 187 | 1 | 5 | p100 \(12G\) | gpu1403 | Y |
| Intel Cascade \(Platinum 8268\) | 48 | 376 | 1 | 10 | quadrortx \(24G\) | gpu1414 | Y |
| Intel Cascade Lake \(Gold 6242\) | 32 | 376 | 10 | 10 | quadrortx \(24G\) | gpu2001 - gpu2010 | Y |
| Total | 496 |  | 19 |  |  |  |  |

### gpu-debug

The gpu-debug partition is for users to debug gpu programs/jobs. There is 1 node \(4 GPUs\) in the gpu-debug partition.

| Model | Cores per Node | Memory \(GB\) | Node Count | GPUs Per Node | GPU \(GPU Memory\) | Nodes | X Server |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Skylake \(Gold 5122\) | 8 | 187 | 1 | 4 | p100 \(12G\) | gpu1207 | Y |
|  | 32 |  | 1 |  |  |  |  |

### gpu-he

The gpu-he partition is for programs/jobs which need to access high-end GPUs. There are 5 nodes \(28 GPUs\) in the gpu-he partition.

| Model | Cores per Node | Memory \(GB\) | Node Count | GPUs Per Node | GPU \(GPU Memory\) | Nodes | X Server |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Skylake \(Gold 6126\) | 24 | 187 | 3 | 4 | v100 \(32G\) | gpu1210-gpu1212 | Y |
| Intel Broadwell \(E5-2698 v4\) | 40 | 503 | 2 | 8 | v100 \(32G\) | gpu1404-gpu1405 | Y |
| Total | 152 |  | 5 | 28 |  |  |  |

### vnc

The vnc partition is for users to run programs/jobs in an graphical desktop environment. There are 27 nodes \(16 GPUs\) in the vnc partition.

| Model | Cores per Node | Memory \(GB\) | Node Count | GPUs Per Node | GPU \(GPU Memory\) | Nodes | X Server |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Inet Broadwell \(E5-2697A v4\) | 32 | 755 | 2 | 8 | 1080ti \(11G\) | gpu717-718 | Y |
| Intel Haswell \(ES-2650 v4\) | 24 | 125 | 25 | n/a | n/a | node945-node969 | N |
| Total | 664 |  | 27 | 16 |  |  |  |

