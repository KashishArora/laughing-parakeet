FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

# RUN pip install --no-cache-dir -r requirements.txt
# RUN apt install python3-pyyaml
RUN pip install PyYAML==5.4.1

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]


