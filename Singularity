Bootstrap: docker
From: continuumio/miniconda3

%labels
   AUTHOR s.schmeier@protonmail.com

%environment
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This sets global environment variables for anything run within the container
  export PATH="/opt/conda/bin:/usr/local/bin:/usr/bin:/bin:"
  unset CONDA_DEFAULT_ENV
  export ANACONDA_HOME=/opt/conda


%post
   export PATH=/opt/conda/bin:$PATH
   conda config --add channels defaults
   conda config --add channels bioconda
   conda config --add channels conda-forge
   conda install --yes bioconductor-biocparallel bioconductor-clusterprofiler=3.8.1 bioconductor-org.hs.eg.db=3.6.0 bioconductor-org.mm.eg.db=3.6.0 r-readr bioconductor-gseabase=1.42.0
   conda clean --index-cache --tarballs --packages --yes
