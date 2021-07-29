FROM nvcr.io/nvidia/tensorflow:21.05-tf1-py3

RUN set -x \
&& apt update \
&& apt install -y libsm6 libxext6 libxrender-dev

WORKDIR  /home/ubuntu

COPY requirements.txt .
COPY docker-entrypoint.sh .

RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x docker-entrypoint.sh

ENTRYPOINT /home/ubuntu/docker-entrypoint.sh
