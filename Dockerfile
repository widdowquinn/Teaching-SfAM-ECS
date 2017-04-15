FROM andrewosh/binder-base

USER root

# Add dependency
#RUN apt-get update

# Install other dependencies via apt-get
#RUN $HOME/notebooks/install-apps.sh

USER main

# Get rid of token/password requests
RUN mkdir -p $HOME/.jupyter
RUN echo "c.NotebookApp.token = ''" >> $HOME/.jupyter/jupyter_notebook_config.py

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt

# Install requirements for iPython widgets and prepare
# matplotlib font cache
#RUN conda install ipywidgets &&
#    /home/main/anaconda2/envs/python3/bin/python -c "import matplotlib.pyplot"

