# Singularity config for gsea container

A [Singularity Hub](https://www.singularity-hub.org/) definition.

If [Singularity](http://singularity.lbl.gov) is installed locally, the container can be build (needs root access) locally like this:

```bash
sudo singularity build gsea.simg Singularity > build.log 2>&1
```

The container can also be downloaded from [Singularity Hub](https://www.singularity-hub.org/) without root access to the local machine like this:

```bash
singularity pull --name "gsea.simg" sschmeier/container-gsea:latest 
```

