# System Overview

## Compute Nodes

Oscar has  384 compute nodes including 31 GPU nodes.

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
      <td style="text-align:left">Intel Haswell (E5-2650 v3)</td>
      <td style="text-align:left">20</td>
      <td style="text-align:left">94</td>
      <td style="text-align:left">1</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node936</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Haswell (ES-2650 v3)</td>
      <td style="text-align:left">20</td>
      <td style="text-align:left">125</td>
      <td style="text-align:left">135</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node901-node935,</p>
        <p>node937-node941,</p>
        <p>node945-node972,</p>
        <p>node974-node976, node1001-node1064</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Broadwell (ES-2650 v4)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">110</td>
      <td style="text-align:left">1</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node973</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">93</td>
      <td style="text-align:left">47</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1121,</p>
        <p>node1129-node1160,</p>
        <p>node1301-node1313,</p>
        <p>node1315</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">187</td>
      <td style="text-align:left">127</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">
        <p>node1101-node1128,</p>
        <p>node1161-node1164,</p>
        <p>node1314,</p>
        <p>node1321-node1328,</p>
        <p>node1626-node1638,</p>
        <p>node1640-node1664, node1701-node1748</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">376</td>
      <td style="text-align:left">36</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1317-node1320, node1333-node1364</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">172</td>
      <td style="text-align:left">1</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1639</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">172</td>
      <td style="text-align:left">1</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1639</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">754</td>
      <td style="text-align:left">2</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1611-node1612</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">2048</td>
      <td style="text-align:left">2</td>
      <td style="text-align:left">n/a</td>
      <td style="text-align:left">node1609-node1610</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 5122)</td>
      <td style="text-align:left">8</td>
      <td style="text-align:left">93</td>
      <td style="text-align:left">4</td>
      <td style="text-align:left">titanv (12G)</td>
      <td style="text-align:left">node1201 -node1204</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 5122)</td>
      <td style="text-align:left">8</td>
      <td style="text-align:left">187</td>
      <td style="text-align:left">2</td>
      <td style="text-align:left">p100 (12G)</td>
      <td style="text-align:left">gpu1207, gpu1209</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">12</td>
      <td style="text-align:left">187</td>
      <td style="text-align:left">6</td>
      <td style="text-align:left">p100(12G)</td>
      <td style="text-align:left">gpu1213-gpu1218</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade (Gold 6142)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">376</td>
      <td style="text-align:left">2</td>
      <td style="text-align:left">titanrtx (24G)</td>
      <td style="text-align:left">gpu1401-gpu1402</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Skylake (Gold 6126)</td>
      <td style="text-align:left">24</td>
      <td style="text-align:left">187</td>
      <td style="text-align:left">3</td>
      <td style="text-align:left">v100 (32G)</td>
      <td style="text-align:left">gpu1210-gpu1212</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Broadwell (E5-2698 v4)</td>
      <td style="text-align:left">40</td>
      <td style="text-align:left">503</td>
      <td style="text-align:left">2</td>
      <td style="text-align:left">v100 (32G)</td>
      <td style="text-align:left">gpu1404-gpu1405</td>
    </tr>
    <tr>
      <td style="text-align:left">Intel Cascade (Gold 6242)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">376</td>
      <td style="text-align:left">10</td>
      <td style="text-align:left">quadrortx (24G)</td>
      <td style="text-align:left">gpu2001-gpu2010</td>
    </tr>
    <tr>
      <td style="text-align:left">Inet Broadwell (E5-2697A v4)</td>
      <td style="text-align:left">32</td>
      <td style="text-align:left">755</td>
      <td style="text-align:left">2</td>
      <td style="text-align:left">1080ti (11G)</td>
      <td style="text-align:left">gpu717-718</td>
    </tr>
  </tbody>
</table>

