---
description: Guide to build and compile software using  CCMake.
---

# Using CCMake

Open-source software refers to any program whose source code is available for use or modification as users or other developers see fit. This is usually developed as a public collaboration and made freely available.

### CMake and CCMake

Due to the complexity of some software, we often have to link to third party or external libraries. When working with software that has complicated building and linking steps, it is often impractical to use GCC (or your favorite compiler) directly. GNU Make is a build system that can simplify things somewhat, but "makefiles" can become unwieldy in their own way. Thankfully for us, there is a tool that simplifies this process.&#x20;

CMake is a build system generator that one can use to facilitate the software build process. CMake allows one to specify—at a higher level than GNU Make—the instructions for compiling and linking our software. Additionally, CMake comes packaged with CCMake, which is an easy-to-use interactive tool that  will let us  provide build instructions to the compiler and the linker for projects written in C, Fortran, or C++. For more information about CMake and CCMake, please click [here](https://cmake.org/).

{% hint style="info" %}
Make sure the source code  has a CMakeLists.txt file in the root folder
{% endhint %}

### Getting the source code from a Git Repository

Much of the time, source code is available on platforms such as  GitHub, GitLab or BitBucket. Cloning (or downloading) the project from any of those is the same process. First, you need to get the URL from the repository.  It usually looks like this:&#x20;

_GitHub repository_

{% embed url="https://github.com/<userrname>/<project_name>.git" %}

_Bitbucket repository_

{% embed url="https://bitbucket.org/<username/<project_name>.git" %}

Where **username** indicates the GitHub (or BitBucket, etc) account of the owner of the project, and **project\_name** indicates, well, try to guess.

GitHub and BitBucket have a button at the top right side of the repository web page labeled "clone". Copy that  **URL**

#### Clone The Repository

Create a new folder on a path with the necessary read/write permissions

```
mkdir <new_folder_name>
```

Go inside inside that folder

```
cd <new_folder_name>
```

Clone the repository:

```
git clone  <URL>
```

_URL_ is the repository's link mentioned above.

### Getting the source code from a .tar or .zip file

In case you downloaded the project from a different source, and it is contained in a .tar or .zip file. Just extract the source code on a folder with the necessary read/write permissions.&#x20;

```
tar -xf archive.tar.gz
```

### Build the Project

Create a new folder and name it _build_

```
mkdir build
```

Go inside inside that folder

```
cd build
```

Execute CCMake  pointing to the root folder which has a CMakeLists.txt file

{% hint style="info" %}
In this example, let's assume the build folder is at the same level as the CMakeLists.txt file.
{% endhint %}

```
ccmake ../
```

The CCMake text interface will pop up with all the necessary attributes to  build the software.

![](<../.gitbook/assets/image (1) (1) (1) (1) (1).png>)

Set up the paths to the required libraries and press "c" to  configure the project. Some errors might come up about CMake unable to find some specific libraries. This could be because that library does not exist in the system or you have not loaded the right module. Please contact CCV staff on how to fix this type of errors.

Make sure the attribute **CMAKE\_INSTALL\_PREFIX** points to a path with the necessary read/write permissions. By default it is set to the folder **/usr/bin/** , which most of the users have no access to.

Once the configuration process has ended successfully, press "g" to generate the project. Generate the project does not mean compile or execute the program, please continue reading.

### Compile the Project

Compile the project using the command make

```
make
```

You might want to increase the number of jobs compiling the software.

{% hint style="info" %}
To speed up the compilation process, add the parameter "-j 8" to parallelize the job.



```
make -j 8
```
{% endhint %}

Once it  is done, your project will be installed in the path set in the **CMAKE\_INSTALL\_PREFIX** attribute  as explained above.

If you have any questions or need help please email `support@ccv.brown.edu`.







