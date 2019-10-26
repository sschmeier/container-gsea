FROM continuumio/miniconda3

RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge

RUN conda update -n base -c defaults conda

RUN conda install --yes bioconductor-biocparallel bioconductor-clusterprofiler=3.8.1 bioconductor-org.hs.eg.db=3.6.0 bioconductor-org.mm.eg.db=3.6.0 r-readr bioconductor-gseabase=1.42.0

RUN conda clean --index-cache --tarballs --packages --yes
