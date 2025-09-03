FROM quay.io/jupyter/base-notebook
WORKDIR /usr/local/app

# install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# expose port to the host machine
EXPOSE 8888