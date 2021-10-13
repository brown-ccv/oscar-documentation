---
description: Running Paraview Remote Rendering in Oscar
---

# ParaView Remote Rendering

{% hint style="warning" %}
This service is new and is in Beta
{% endhint %}

The Center for Computation and Visualization (CCV) offers to the academic community a way to visualize large datasets using Oscar and its powerful GPUs as a rendering server. The current GPU hardware and available memory on Oscar surpasses the common desktop models, offering a modern and robust solution to display large datasets in parallel jobs using the widely used  opensource software [Paraview](https://www.paraview.org). It is a simple two-steps process. Start the server and connect the client.

## **Who benefits from this service? **

The target audience for this service are members of the academic community that interact, and analyze large 3D datasets, i.e., point clouds, volumetric data, tiff-stacks and mesh-data. This includes groups working with microscopy data, MRI images, structural analysis, fluid dynamics, climate sciences, astrophysics and more. In fact, ParaView can handle over 100 different file formats. The remote rendering service is targeted to scenarios where the personal/lab computer setup may not have the resources to handle the size of the underlying datasets. Common obstacles are older GPU technology or low RAM availability which may cause performance issues. 

![Research areas that can benefit from ParaView's Remote Rendering Service](<../.gitbook/assets/image (17).png>)

## Workflow Overview 

![Workflow Overview](<../.gitbook/assets/Remote Rendering (1).png>)

Above is a graphical representation on how the parallel render server works using Oscar. The user logins to Oscar either via SSH or VNC session.  From the terminal, the user loads the Paraview module and executes the convinience script called `run-remote-server`to start the Paraview server session and allocate the memory and walltime limit. Once the server starts, the user receives an email with the information needed to access the server. Lastly,  the user connects the Paraview client (i.e., desktop application) to the server that is running in Oscar. The client displays images that are processed by the server (on Oscar) which reconstructs the information computed by the nodes.

## 0. Prerequisites

### **Paraview Desktop:**

You can either download the Paraview Desktop App to your presonal computer or access the desktop application already installed in Oscar's VNC. Installing in your local computer may give you better interactivity.

#### **Download Paraview Desktop to your desktop computer (Recommended)**

Go to the official [Paraview Download website](https://www.paraview.org/download/). Select your Operational system (Linux, Windows or Mac) and get the file `ParaView-5.9.0-Windows-Python3`. Install in your environment, go to the installation directory and open Paraview.

{% hint style="info" %}
Not all versions will work. **You must select 5.9.0**
{% endhint %}

1. [Connect to VNC](../connecting-to-oscar/vnc.md)
2. Open terminal: Applications - > Utilities -> Terminal (this might differ depending on the Operating System UI)
3. Run the commands

```
module load paraview/5.9.0
paraview5.9_ui
```

{% hint style="info" %}
If this is your first time opening paraview,  it will take some minutes (don't despair!)
{% endhint %}

## 1. Start the Server

You need to allocate the resources via SLURM indicating the amount of memory you want to reserve, as well as a few optional parameters to configure your session. We have created a convinience script for you to do so called `run-remote-server`

In order to have the `run-remote-server` be found we need  to load the Paraview module that supports this service (this appends the correct path to out `PATH` environment variable)

```
module load paraview/5.9.0

run-remote-server -u your_brown_username@brown.edu
```

The flag `-u`** **indicates where the confirmation email will be sent. Technically it could be any email address, but the remote render session can only be used by existing Oscar users.

{% hint style="warning" %}
The only mandatory parameter is **-u **\<user-email>. 
{% endhint %}

#### Memory Request

The number of CPU cores and GPUs are determined by the memory request. 

By default, the `run-remote-server` script's minimum memory request is 45 GB (1 CPU/GPU ) and the maximum is 180 GB (4 CPU/GPU ). You can add more resources to your session using the `-m` flag. Every multiplier of 45GB adds a CPU core and a GPU. i.e :

```
# reserves 1 cpu/gpu 
run-remote-server -m 45M -u your_brown_username@brown.edu

# reserves 1 cpu/gpu 
run-remote-server -m 40G -u your_brown_username@brown.edu

# reserves 2 cpu/gpu 
run-remote-server -m 90G -u your_brown_username@brown.edu

# reserves 2 cpu/gpu 
run-remote-server -m 120G -u your_brown_username@brown.edu

# reserves 4 cpu/gpu 
run-remote-server -m 180G -u your_brown_username@brown.edu

```

The following is the description of the command and the available configuration settings.

`usage: run-remote-render [-n cores] [-t walltime] [-m memory] [-q queue] [-o outfile] [-g ngpus] [-u user brown email]`\
`Allocates resources, start up the render server and send and email to the user requesting the service`\
`options: `\
`-t walltime as hh:mm:ss (default: 1:30:00) `\
`-m memory as #[k|m|g] (default: 45G) `\
`-o outfile save a copy of the session's output to outfile (default: off)`\
`-q slurm partition (gpu (default)| gpu-he)`\
`-u brown email of the user requesting the service`

After executing the command, the system will allocate resources, and it will send a confirmation email  indicating that the service is ready; the email includes additional instruction on how to connect to the server using Paraview UI.

{% hint style="danger" %}
NOTE: You might not receive the email instantly. Sometimes it may take a while before there are sufficient resources (i.e., GPUs) available. You will get the notification as soon as they are available for your use. You can also use the `myq` command to see the status of your job
{% endhint %}

## 2. Wait for the confirmation Email 

In the email sent by the system has important information such as :

* How to create an SSH tunnel
* The IP address and port where the service is deployed
* How to connect to the server from multiple systems

Please read it and get familiar on how the process works.

{% hint style="info" %}
Please, read the email carefully. It contains information about your connection such as server IP address and port. You need them in order to proceed with the next steps. 
{% endhint %}

## 3. Connect to the Server

There are two options to  connect to the remote server:

* Your personal computer
* VNC

### 3.1 Setting up SSH Tunneling 

{% hint style="info" %}
This step is only needed if you are using your personal computer and not VNC
{% endhint %}

Open a terminal and execute the command:

```
ssh -N -L <port-number>:<SERVER_IP>:<port-number> <your_brown_id>@ssh.ccv.brown.edu
```

* **`<SERVER_IP> `  **This is the ip of the compute node in Oscar. **Replace with the value sent in the confirmation email **
* **`<port-number>`**This is the port exposed to access the rendering server. **Replace with the value sent in the confirmation email**
* **`<your_brown_id>` **is your Brown username (It should be the same used to connect to Oscar)\


{% hint style="info" %}
The IP address and the Port might vary from use to user. Check the confirmation email for the correct details  for your connection.
{% endhint %}

{% hint style="danger" %}
NOTE: After entering  your credentials, you will notice **the terminal command line appears to hang**. That is normal, it indicates you are connected and the SSH tunneling is set up.
{% endhint %}

### **3.2 Connect the client/desktop application to the remote server**

This step will reset the scene, so before doing it make sure to save all your data.

1. Open Paraview Desktop Application (see the [prerequisites section](broken-reference))
2. In paraview UI go to menu bar File -> Connect ..
3.  Add Server:
   1. Name the connection ‘Remote Rendering’’
   2. Select Server type ‘Client / Server’,**.**
   3. The host is the IP sent in the email. 
   4. The port also comes from the email
   5. In the next screen, select Startup Type : Manual. 
   6. Click on Save
   7. Select the new created connection and click ‘Connect’

 After a few seconds, you get connected to the HPC automatically.

{% hint style="info" %}
In subsequent connections you can reuse the Server, but you will need to update the **host **and **port** values each time you launch a new server session
{% endhint %}

### Verifying the connection is set up correctly.

In Paraview UI go to the menu bar `View` and select `Memory Inspector`. You will notice a list of servers indicating the number of processes running on them



## Summary

1.  Open a terminal an connect to Oscar (Follow [this link](https://docs.ccv.brown.edu/oscar/getting-started) to know how to do it)
2. load the Paraview module `module load paraview/5.9.0`
3.  Execute the command `run-remote-server -u your_brown_email@brown.edu`.
4.  Wait for the email indicating the server is running 
5. Connect to the server using Paraview Client

If you find any issues following this guide or require additional help, do not hesitate contacting CCV services at `support@ccv.brown.edu`
