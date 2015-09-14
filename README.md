Docker image for thumbor
========================

Docker image for [thumbor](https://github.com/thumbor/thumbor) that can be configured through environment variables. Thumbor will be exposed on port 8888.

Description
-----------

* Can build multiple versions of thumbor. Set ```THUMBOR_VERSION``` before running ```docker build```
* Configuration through environment variables. All configuration options as returned by ```thumbor-config``` are available. Without setting any environment variables, thumbor runs with its defaults.
* jpegtran Optimizer for JPEG included. Can be toggled by setting
  - ```OPTIMIZERS = ['thumbor.optimizers.jpegtran']```
  - ```JPEGTRAN_PATH = '/usr/bin/jpegtran'```
* Dependencies for face and feature detection are included
