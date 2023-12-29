
### Install MetaboAnalystR
## Step 1. Install package dependencies

# For Linux (e.g. Ubuntu 18.04/20.04): libcairo2-dev, libnetcdf-dev, libxml2, libxt-dev and libssl-dev should be installed at frist;

#Enter the R function (metanr_packages) and then use the function. A printed message will appear informing you whether or not any R packages were installed.

#Function to download packages:
  
  metanr_packages <- function(){
    
    metr_pkgs <- c("impute", "pcaMethods", "globaltest", "GlobalAncova", "Rgraphviz", "preprocessCore", "genefilter", "sva", "limma", "KEGGgraph", "siggenes","BiocParallel", "MSnbase", "multtest","RBGL","edgeR","fgsea","devtools","crmn","httr","qs")
    
    list_installed <- installed.packages()
    
    new_pkgs <- subset(metr_pkgs, !(metr_pkgs %in% list_installed[, "Package"]))
    
    if(length(new_pkgs)!=0){
      
      if (!requireNamespace("BiocManager", quietly = TRUE))
        install.packages("BiocManager")
      BiocManager::install(new_pkgs)
      print(c(new_pkgs, " packages added..."))
    }
    
    if((length(new_pkgs)<1)){
      print("No new packages added...")
    }
  }

  # Usage of function:
  
  metanr_packages()

## Step 2. Install the package  
 

  # Step 1: Install devtools
  install.packages("devtools")
  library(devtools)
  
  # Step 2: Install MetaboAnalystR with documentation
  devtools::install_github("xia-lab/MetaboAnalystR", build = TRUE, build_vignettes = TRUE, build_manual =T)    


### Install OptiLCMS  
     
  # Latest features could only be obtained from this approach, make sure 'devtools' installed first
  devtools::install_github("xia-lab/OptiLCMS", build = TRUE, build_vignettes = FALSE, build_manual =TRUE)
  