# Yelp Dataset Analysis

This repository contains analysis of [Yelp dataset](https://www.yelp.com/dataset/download).


## Data Downloading
- Download data set to your local machine (.tar format).
- Unpack `yelp_dataset.tar` and copy .json files  into `yelp_dataset` folder. It is needed to correctly read the data in Jupyter Notebook.

## Running Jupyter Notebook in Docker
Build the image:
```
docker build . -t yelp-jupyter:latest
```
Run the container:
```
docker run --rm -p 8888:8888 -v $(pwd):/home/jovyan/yelp_dataset/ yelp-jupyter:latest
```
Copy printed URL to your browser in order to access the notebook.
Open `yelp-analysis_project.ipynb` and click Run to start reproducing the results.