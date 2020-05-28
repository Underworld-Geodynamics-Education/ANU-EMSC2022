FROM lmoresi/jupyterhub_single_plus_pye:1.0

## =============================================================
## base - image ... whatever functionality you want to provide !
## This is my unix / python stuff (but it doesn't have underworld)
##
## This dockerfile builds an image from this content, and serves the
## sample web pages and notebooks at port 8080
##
## docker run -p 8181:8080 --name="docker-web-notebooks-test" -t lmoresi/lmoresi/docker-web-notebooks-module
## and then browse the docker VM ip address on port 8181 (for example)
##
## OR just use kitematic and click on the preview image
##
## =============================================================


WORKDIR  ${HOME}
USER jovyan

## These are the build templates etc
ADD --chown=jovyan:jovyan  +StudentLabs +StudentLabs
ADD --chown=jovyan:jovyan  +Solutions +Solutions
ADD --chown=jovyan:jovyan  0-StartHere.ipynb 0-StartHere.ipynb
ADD --chown=jovyan:jovyan  GlobalEQMap.png GlobalEQMap.png
ADD --chown=jovyan:jovyan  Docker/Standard/jupyter_notebook_config.py .jupyter/jupyter_notebook_config.py

# Persistent / Shared space outside the container
# VOLUME /home/jovyan/Data/Resources
# VOLUME /home/jovyan/build

# expose notebook port and server port
EXPOSE 8888

WORKDIR  ${HOME}

# ENV no_proxy jupyterhub

# note we use xvfb which to mimic the X display for lavavu
ENTRYPOINT ["/usr/local/bin/xvfbrun.sh"]

CMD ["jupyter", "notebook", "--ip=0.0.0.0","--allow-root", "--NotebookApp.token=''", default_url="0-StartHere.ipynb" ]
