FROM quay.io/jupyter/base-notebook:python-3.11
#FROM jupyter/base-notebook:python-3.9.5
WORKDIR $HOME
## Install Python citation manager
RUN pip install --no-cache-dir jupyterlab-citation-manager
COPY requirements.txt
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y git
ENTRYPOINT jupyter lab --allow-root