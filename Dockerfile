FROM quay.io/jupyter/base-notebook
WORKDIR /usr/local/app

# install dependencies
USER root

RUN apt-get update && apt-get -y install tesseract-ocr
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

USER jovyan

# expose port to the host machine
EXPOSE 8888