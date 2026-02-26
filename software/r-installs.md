# Installing R Packages

## Installing R packages

Users should install R packages for themselves locally. This documentation shows you how to install R packages locally (without root access) on Oscar.

If the package you want to install has operating-system-level dependencies (i.e. the package depends on core libraries), then we can install it as a module.

### Installing an R package

First load the R version that you want to use the package with:

```bash
module load r/4.5.1
```

Start an R session

```
R
```

Note some packages will require code to be compiled so it is best to do R packages installs on the login node.

To install the package 'wordcloud':

```r
> install.packages("wordcloud", repos="http://cran.r-project.org")
```

You will see a warning:

```r
Warning in install.packages("wordcloud", repos = "http://cran.r-project.org") :
  'lib = "/oscar/runtime/opt/R/3.4.2/lib64/R/library"' is not writable
Would you like to use a personal library instead?  (y/n) 
```

Answer `y` . If you have not installed any R packages before you will see the following message:

```r
Would you like to create a personal library
~/R/x86_64-pc-linux-gnu-library/3.4
to install packages into?  (y/n) 
```

Answer `y` . The package will then be installed. If the install is successful you will see a message like:

```r
** R
** data
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded
* DONE (wordcloud)
```

If the installation was not successful you will see a message like:

```r
Warning message:
In install.packages("wordcloud", repos = "http://cran.r-project.org") :
  installation of package ‘wordcloud’ had non-zero exit status

```

There is normally information in the message that gives the reason why the install failed. Look for the word `ERROR` in the message.

Possible reasons for an installation failing include:

* Other software is needed to build the R package, e.g. the R package `rgdal` needs `gdal` so you have to do `module load gdal`
* A directory needs deleting from a previous failed installation.

## Reinstalling R packages

To reinstall R packages, start an R session and run the update.packages() command

```bash
module load r/4.5.1
R
```

```r
update.packages(checkBuilt=TRUE, ask=FALSE)
```

### Removing an R package

Start an R session:

```
R
```

To remove the 'wordcloud' package:

```r
> remove.packages("wordcloud")
```

## Common Issues

### libproj or sqlite3 not found in standard or given locations.

The error is reported for the sf and terre packages. To install the pakcages, run the following commands

{% tabs %}
{% tab title="sf" %}
```
install.packages("terra", configure.args = c("--with-proj-include=/oscar/rt/9.6/25/spack/x86_64_v3/proj-9.4.1-fhhvfr6iwri5cw42roir5meojvazzfoo/include", "--with-proj-lib=/oscar/rt/9.6/25/spack/x86_64_v3/proj-9.4.1-fhhvfr6iwri5cw42roir5meojvazzfoo/lib64", "--with-sqlite3-lib=/oscar/rt/9.6/25/spack/x86_64_v3/sqlite-3.46.0-pwg7tka36sc5abuw7l637zgwrvk63tu3/lib"))
```
{% endtab %}

{% tab title="terra" %}
```
install.packages("sf", configure.args = c("--with-proj-include=/oscar/rt/9.6/25/spack/x86_64_v3/proj-9.4.1-fhhvfr6iwri5cw42roir5meojvazzfoo/include", "--with-proj-lib=/oscar/rt/9.6/25/spack/x86_64_v3/proj-9.4.1-fhhvfr6iwri5cw42roir5meojvazzfoo/lib64", "--with-sqlite3-lib=/oscar/rt/9.6/25/spack/x86_64_v3/sqlite-3.46.0-pwg7tka36sc5abuw7l637zgwrvk63tu3/lib"))
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
The proj and sql paths need to be modified accordingly if different proj are sqlite3 modules are used.
{% endhint %}

### Can not install a package in Open OnDemand (OOD) Rstudio Server app

It is recommended to install R packages from an Oscar terminal, instead of from an OOD Rstudio Server sesssion. This is because that the Rstudio Server app runs in a container which has its own OS and system packages.&#x20;
