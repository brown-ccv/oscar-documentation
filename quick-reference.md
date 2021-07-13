# Quick Reference

### Common Linux Commands

<table>
  <thead>
    <tr>
      <th style="text-align:left">Command</th>
      <th style="text-align:left">Related Word/Phrase</th>
      <th style="text-align:left">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><code>cd</code>
      </td>
      <td style="text-align:left">Change Directory</td>
      <td style="text-align:left">
        <p>Moves the user into the specified directory</p>
        <p></p>
        <p><code>cd ..</code> to move one directory up</p>
        <p><code>cd</code> by itself to move to home directory</p>
        <p><code>cd-</code> to move to previous directory</p>
        <p><code>cd &lt;directory-path&gt;</code> to move to a directory (can be an
          absolute path or relative path)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>cp &lt;old_file_path&gt; &lt;new_directory_path&gt;</code>
      </td>
      <td style="text-align:left">Copy</td>
      <td style="text-align:left">Copies the file into the specified directory</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>clear</code>
      </td>
      <td style="text-align:left">Clear</td>
      <td style="text-align:left">Clears the terminal</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>cat &lt;filename&gt;</code>
      </td>
      <td style="text-align:left">Concatenate</td>
      <td style="text-align:left">Lists the contents of a file</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>ls</code>
      </td>
      <td style="text-align:left">List</td>
      <td style="text-align:left">Lists contents within the current directory</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>grep &lt;string_to_match&gt; &lt;filename&gt;</code>
      </td>
      <td style="text-align:left"><b>G</b>lobally Search for a <b>R</b>egular <b>E</b>xpression and <b>P</b>rint
        Matching Lines</td>
      <td style="text-align:left">Searches for the string / <a href="https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference">regular expression</a> within
        the specified file and prints the line(s) with the result</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>pwd</code>
      </td>
      <td style="text-align:left">Present Working Directory</td>
      <td style="text-align:left">Displays the path of the current directory that you are in</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>man &lt;command&gt;</code>
      </td>
      <td style="text-align:left">Manual</td>
      <td style="text-align:left">Displays the manual instruction for the given command</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>mv &lt;file_name&gt; &lt;new_directory&gt;</code>
      </td>
      <td style="text-align:left">Move</td>
      <td style="text-align:left">
        <p>Moves a file into a new directory
          <br />
        </p>
        <p><code>mv &lt;old_file_name&gt; &lt;new_file_name&gt; </code>to rename
          a file</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>mkdir &lt;directory_name&gt;</code>
      </td>
      <td style="text-align:left">Make Directory</td>
      <td style="text-align:left">Creates a new directory</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>rm &lt;directory_name&gt;</code>
      </td>
      <td style="text-align:left">Remove</td>
      <td style="text-align:left">Deletes directories and the contents within them</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>rmdir &lt;directory_name&gt;</code>
      </td>
      <td style="text-align:left">Remove Directory</td>
      <td style="text-align:left">Removes the specified directory (must be empty)</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>touch</code>
      </td>
      <td style="text-align:left">Touch</td>
      <td style="text-align:left">Creates a blank new file</td>
    </tr>
  </tbody>
</table>

### Modules

| Command | Description |
| :--- | :--- |
| `module list` | Lists all modules that are currently loaded in your software environment. |
| `module avail` | Lists all available modules on the system. Note that a module can have multiple versions.  |
| `module help <name>` | Prints additional information about the given software.  |
| `module load <name>` | Adds a module to your current environment. If you load using just the name of a module, you will get the default version. To load a specific version, load the module using its full name with the version: "module load gcc/6.2" |
| `module unload <name>` | Removes a module from your current environment. |

### Common Acronyms and Terms

<table>
  <thead>
    <tr>
      <th style="text-align:left">Term</th>
      <th style="text-align:left">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Anaconda / Conda</td>
      <td style="text-align:left">
        <p>A distribution of Python and R used for scientific computing that is meant
          to simplify package management and deployment. Conda is used for installing
          packages and managing their dependencies.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/software/anaconda">Related Page - Anaconda</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Association</td>
      <td style="text-align:left">
        <p>Within Oscar, an association refers to a combination of four factors:
          Cluster, Account, User, and Partition. Associations are used to control
          job submissions for users.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/accounts-on-oscar/associations-and-quality-of-service">Related Page - Associations &amp; Quality of Service</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Batch Jobs</td>
      <td style="text-align:left">
        <p>Put simply, batch jobs are scheduled programs that are assigned to run
          on a computer without further user interaction.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/submitting-jobs/batch">Related Page - Batch Jobs</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">CCV</td>
      <td style="text-align:left">Brown University&apos;s Center for Computation and Visualization. Provides
        software, expertise, and other services for Brown&apos;s research community.
        See <a href="https://ccv.brown.edu/">our website</a> for more information.</td>
    </tr>
    <tr>
      <td style="text-align:left">CESM</td>
      <td style="text-align:left">
        <p>Stands for Community Earth System Model. &quot;CESM is a fully-coupled,
          community, global climate model that provides state-of-the-art computer
          simulations of the Earth&apos;s past, present, and future climate states.&quot;
          (<a href="https://www.cesm.ucar.edu/models/cesm2/">Source</a>)</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/local-install/cesm">Related Page - Using a CESM module</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">CIFS</td>
      <td style="text-align:left">
        <p>Stands for Common Internet File System. CIFS is a network protocol used
          for providing shared access to files and devices on the same network. Users
          who are unable to use SMB for file-sharing should try CIFS as an alternative.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/cifs-non-ad-local-mount">Related Page - CIFS non-AD</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Condo</td>
      <td style="text-align:left">
        <p>PIs can purchase condos that have a significant amount of computing resources
          which can be shared with others.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/accounts-on-oscar/account-types">Related Page - Account Types</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">CUDA</td>
      <td style="text-align:left">
        <p>&quot;<a href="https://developer.nvidia.com/what-cuda">CUDA</a> is an extension
          of the C language, as well as a runtime library, to facilitate general-purpose
          programming of NVIDIA GPUs.&quot; (<a href="https://docs.ccv.brown.edu/oscar/gpu-computing/intro-to-cuda">Source</a>)</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/gpu-computing/intro-to-cuda">Related Page - Intro to CUDA</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">HPC</td>
      <td style="text-align:left">Stands for High Performance Computing. HPC is the ability to process data
        and perform highly complex calculations at an accelerated rate. Oscar is
        the service that CCV offers to the Brown community for their High Performance
        Computing needs.</td>
    </tr>
    <tr>
      <td style="text-align:left">Job Array</td>
      <td style="text-align:left">
        <p>A job array is a collection of jobs that all run the same program but
          on different values of a parameter.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/submitting-jobs/array">Related Page - Job Arrays</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Jupyter Notebook</td>
      <td style="text-align:left">
        <p>&quot;The Jupyter Notebook is an open-source web application that allows
          you to create and share documents that contain live code, equations, visualizations
          and narrative text.&quot;</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/jupyter-notebooks/jupyter-notebooks-on-oscar-1">Related Page - Jupyter Notebooks on Oscar</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Interactive Jobs</td>
      <td style="text-align:left">
        <p>Jobs that allow the user to interact in real time with applications within
          Oscar, often from the command line. This differs from batch jobs in that
          each command to be run must be put in one at a time.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/submitting-jobs/interact">Related Page - Interactive Jobs</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Modules</td>
      <td style="text-align:left">
        <p>Modules are software components that can easily be loaded or unloaded
          into Oscar. For instance, a user can load the Python 3 module using a <code>module load</code> command.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/software/modules">Related Page - Using Modules</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">MPI</td>
      <td style="text-align:left">
        <p>Stands for <a href="https://www.techopedia.com/definition/115/message-passing-interface-mpi">Message Passing Interface</a>.
          MPI is a system that aims to be the standard for portable and efficient
          message passing. <a href="https://www.techopedia.com/definition/3230/message-passing">Message passing</a> is
          a technique often used in object-oriented programming and parallel programming</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/submitting-jobs/mpi-jobs">Related Page - MPI Jobs</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Partition</td>
      <td style="text-align:left">
        <p>Partitions are essentially groupings of nodes that allocate resources
          for specific types of tasks. On Oscar, partitions are based on job submissions
          through the Slurm workload manager.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/submitting-jobs/slurm">Related Page - Slurm Partitions</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">PI</td>
      <td style="text-align:left">
        <p>Stands for Principal Investigator. Mainly used to refer to the individual
          responsible for conducting and administrating a research grant. Within
          Oscar, PIs have their own data directories that can be shared to students.
          PIs may also purchase condos.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/accounts-on-oscar/account-types">Related Page - Account Types</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">PuTTY</td>
      <td style="text-align:left">
        <p>A client for SSH for Windows and Unix that emulates a terminal</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/ssh">Related Page - SSH (Terminal)</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Python</td>
      <td style="text-align:left">
        <p>An object-oriented, high-level, and popular programming language</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/software/python-on-oscar">Related Page - Python on Oscar</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Slurm</td>
      <td style="text-align:left">
        <p>A workload manager used within Oscar to schedule jobs</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/submitting-jobs/slurm">Related Page - Slurm Partitions</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">SSH</td>
      <td style="text-align:left">
        <p>Stands for Secure Shell Protocol. Used to communicate securely between
          computers and often used within a command-line interface (CLI) for connections
          to remote servers</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/ssh">Related Page  - SSH (Terminal)</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">SMB</td>
      <td style="text-align:left">
        <p>The Server Message Block (SMB) protocol is a network protocol that allows
          users to communicate with remote computers for file-sharing and other uses.
          It is one of the versions of the Common Internet File System (CIFS). Within
          Oscar, SMB is mainly used for file transfer.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/cifs">Related Page - SMB (Local Mount)</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">VNC</td>
      <td style="text-align:left">
        <p>Stands for Virtual Network Computing. VNC is a desktop sharing system
          that allows you to remotely control another desktop. On Oscar, it is used
          to allow a desktop interface for applications.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/vnc">Related Page - VNC (Virtual Desktop)</a>]</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Quality of Service (QOS)</td>
      <td style="text-align:left">
        <p>The job limits that are linked to a given association. For instance, Priority
          Accounts will generally have a higher quality of service than Exploratory
          Accounts.</p>
        <p>[<a href="https://docs.ccv.brown.edu/oscar/accounts-on-oscar/associations-and-quality-of-service">Related Page - Associations &amp; Quality of Service (QOS)</a>]</p>
      </td>
    </tr>
  </tbody>
</table>



