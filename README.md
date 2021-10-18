Binwalk Docker Image with `cpu_rec` Plugin
==========================================

Docker container image with the [Binwalk](https://github.com/ReFirmLabs/binwalk)
tool, with addition of the [`cpu_rec`](https://github.com/airbus-seclab/cpu_rec)
plugin for CPU instruction set identification analysis.

The image is based on the official
[Binwalk docker image](https://hub.docker.com/r/refirmlabs/binwalk)
and thus contains all the mandatory and optional external tools.

Install
-------

To pull the latest docker image and install the convenience
[binwalk.sh](https://github.com/dsirov/docker-binwalk-cpurec/blob/master/binwalk.sh)
script:

```bash
make install
```

Run
---

Simply execute `binwalk`, but make sure to run it from the directory containing
the file for analysis.

For example:

```bash
binwalk -% firmware.img
```

Or manually run the `dsirov/binwalk-cpurec` docker image, making sure to map the
directory into the docker.  
Mind SELinux pitfalls when enabled.

Image Repository
----------------

The built images can be found at the
[Docker Hub](https://hub.docker.com/repository/docker/dsirov/binwalk-cpurec).
