# Resolving quota issues

This is a quick guide for resolving issues related to file system quotas. To read more details about these quotas, refer to [this page](understanding-disk-quotas.md).

## Step 1: Identify the directory

Run the `checkquota` command and identify the line that shows the warning status message.

If this directory is  either `/oscar/home` or `/oscar/scratch` , you will have to take the subsequent steps to resolve this issue. If the directory is `data+<group>` you should inform others in your group and take collective action to resolve this issue.

## Step 2: Disk Space or Inodes

Check whether  you have exceeded your disk space quota or your inodes quota. Disk space usage is specified in GB or TB while inodes usage is just numerical count.

## Step 3: Remove files

You will need to take the following steps based on the quota you have exceeded.

### Disk Space quota:

The fastest way to reduce this usage is identifying large and unnecessary files. Load the module `ncdu` using the command `module load ncdu` and run `ncdu` in the offending directory. This utility will scan that directory and show you all the directories and files, sorted by their size. If they are not sorted by size, press lowercase `s`  to sort them by size.  You can navigate the directory tree using the arrow keys and delete any files or directories that are unnecessary.

Some programs leave a lot of temporary files on the disk that may not be necessary.

* **Apptainer**: Run the command [`apptainer cache clean`](https://apptainer.org/docs/user/main/cli/apptainer_cache_clean.html) to clear the apptainer cache. This will clear up the cache in your home directory without affecting any container images. However, pulling a new image from a repository may be slower in the future.&#x20;
* **Conda**: Run the command [`conda clean -a`](https://docs.conda.io/projects/conda/en/latest/commands/clean.html)to delete any tarballs downloaded by conda. This does not affect any existing conda or python virtual environments. However, it may slow down the installation of some packages in the future
* **Core Dump Files:** This files are typically named `core.<number>`  A core dump file is generated when a program crashes. It contains the state of the system and it is useful for debugging purposes. You can safely delete any core dump files if you know the reason behind the crash. Old core dump files can take up a lot of disk space and they can be safely deleted.

### Inodes quota:

Inode usage can be reduced by removing any files and directories OR tarring up large nested directories. When a directory is converted to a tar ball, it uses a single inode instead of one inode per directory or file. This can drastically decrease your inode usage. Identify directories that contain a large number of files or a very large nested tree of directories with a lot of files.

To identify such directories, load the module `ncdu` using the command `module load ncdu` and run `ncdu` in the offending directory. This utility will scan that directory and show you all the directories and files, sorted by their size. Press uppercase `C` to switch the sorting criteria to "number of items".  You can navigate the directory tree using the arrow keys and delete or tar any files or directories that are unnecessary.

To create a tar ball of a directory:

```bash
tar -cvf <directory_name>.tar.gz <directory_name>
```

If your usage has exceeded quota and you cannot write to the directory, you can tar ball in another directory. Using this command, you can create a tar ball in the scratch directory:

```bash
tar -cvf /oscar/scratch/$USER/<directory_name>.tar.gz <directory_name>
```
