# System Overview

## Compute Nodes

Oscar has  392 compute nodes including 33 GPU nodes in the batch, gpu, gpu-he, vnc, bigmem, and  debug partitions.

{% hint style="info" %}
Nodes could be down for repair. Use 'sinfo' to check node status on oscar.
{% endhint %}

### batch

The batch partition is for  programs/jobs which need neither GPUs nor large memory. There are 321 nodes in the batch partition

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
      <td style="text-align:left">Intel Broadwell (ES-2650 v4)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">125</td>
      <td style="text-align:left">96</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node945-node976,</p>
        <p>node1001-node1064</p>
      </td>
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
      <td style="text-align:left">37</td>
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
      <td style="text-align:left">144</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1333 - node1364,</p>
        <p>node1601 - node1664, node1701 - node1748</p>
      </td>
    </tr>
  </tbody>
</table>

### gpu

The gpu partition is for programs/jobs which require GPUs. There are 27 nodes in the gpu partition.

| Model | Cores per Node | Usable Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Inet Broadwell \(E5-2697A v4\) | 32 | 755 | 1 | 1080ti \(11G\) | gpu717 |
| Intel Skylake \(Gold 5122\) | 8 | 93 | 4 | titanv \(12G\) | gpu1201 - gpu1204 |
| Intel Skylake \(Gold 5122\) | 8 | 187 | 2 | p100 \(12G\) | gpu1207, gpu1209 |
| Intel Skylake \(Gold 6126\) | 8 | 187 | 7 | p100 \(12G\) | gpu1210 - gpu1216 |
| Intel Cascade Lake \(Gold 6142\) | 32 | 376 | 3 | titanrtx \(24G\) | gpu1401 -  gpu1403 |
| Intel Cascade Lake \(Gold 6242\) | 32 | 376 | 10 | quadrortx \(24G\) | gpu2001 - gpu2010 |

### gpu-he

The gpu-he partition is for programs/jobs which need to access high-end GPUs. There are 5 nodes in the gpu-he partition.

| Model | Cores per Node | Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Skylake \(Gold 6126\) | 24 | 187 | 3 | v100 \(32G\) | gpu1210-gpu1212 |
| Intel Broadwell \(E5-2698 v4\) | 40 | 503 | 2 | v100 \(32G\) | gpu1404-gpu1405 |

### vnc

The vnc partition is for users to run programs/jobs in an graphical desktop environment. There are 33 nodes int the vnc partition.

| Model | Cores per Node | Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Inet Broadwell \(E5-2697A v4\) | 32 | 755 | 1 | 1080ti \(11G\) | gpu718 |
| Intel Haswell \(ES-2650 v3\) | 20 | 125 | 32 | n/a | node901 - node917, node929 - node 943 |

### bigmem

The bigmem parition is for programs/jobs which requires large memory. There are 4 nodes int he bigmem partition

| Model | Cores per Node | Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Cascade Lake \(Gold 6242\) | 32 | 2048 | 4 | n/a | node1609-node1612 |

### debug

The debug partition is for users to debug programs/jobs. There are 2 nodes in the debug parition. 

| Model | Cores per Node | Memory \(GB\) | Node Count | GPU \(GPU Memory\) | Nodes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Intel Haswell \(E5-2650 v3\) | 20 | 125 | 2 | n/a | node924, node928 |

