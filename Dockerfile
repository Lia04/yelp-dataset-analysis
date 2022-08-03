FROM jupyter/scipy-notebook

# Install Python 3 packages
RUN mamba install --quiet --yes \
    'xgboost' \
    'gensim' \
    'pyLDAvis' \
    'nltk' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY yelp-analysis_project.ipynb /home/jovyan/yelp-analysis_project.ipynb
