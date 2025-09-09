# Bioconductor Mirror

## Instructions

Run this command in your bash shell before running R

```bash
export BIOCONDUCTOR_ONLINE_VERSION_DIAGNOSIS = FALSE
```

If Bioconductor is not installed, run

```r
install.packages("BiocManager",repos="http://cran.services.brown.edu")
```

You may have to quit R and open it again after installing Bioconductor

### To install a single package

```r
biocmanager::install("YourPackage", site_repository = "http://bioc.services.brown.edu")
```

### To install several packages in the same session

```r
options(BioC_mirror = "http://bioc.services.brown.edu")
biocmanager::install("YourPackage")
```

###
