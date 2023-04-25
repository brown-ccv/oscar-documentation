---
description: >-
  To determine the sizes of files and discover the largest files in a directory,
  one can use the Ncdu module.
---

# Inspecting Disk Usage (Ncdu)

To get started with NCDU, load the module using the following command:

```bash
module load ncdu/1.14
```

Once the module has been loaded,  it can be used to easily show the size of all files within a directory:

```bash
ncdu my_directory
```

{% hint style="info" %}
To view options you can use with the `ncdu` command, simply use the command `ncdu --help`
{% endhint %}

The line above uses Ncdu to rank all of the files within the `my_directory` directory. Your window should change to show a loading screen (if the directory doesn't have a lot in it, you may not even see this screen):

![An example loading screen for Ncdu (the full directory for the "Current item" has been obscured)](<../.gitbook/assets/image (12) (1).png>)

Once Ncdu has finished loading, you will see a result like this:

![A list of files and their sizes as displayed in the output of a call to Ncdu](<../.gitbook/assets/image (13).png>)

The files will be ordered with the largest file at the top and the smallest file at the bottom. The bottom left corner shows the `Total disk usage` (which in this case is 25.5 KiB). To quit out of this display, simply press q on your keyboard.

{% hint style="info" %}
If  there is a subdirectory within the directory you're inspecting, the files and directories within that subdirectory can be viewed by selecting the directory with the gray bar (using up and down arrow keys as needed) and then using the right arrow key.
{% endhint %}
