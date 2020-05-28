#!/bin/sh

# Docker build command for the base jupyter hub python image
# Currently we are at version 1.0 with jupyterhub so sync our tag with that


# Includes stripy, litho1pt0 and lavavu
# include cartopy and imageio 


set -e
cd $(dirname "$0")/../..

docker build -f Docker/Base/Dockerfile -t lmoresi/jupyterhub_single_plus_pye:1.0 .
