FROM ubuntu:focal

RUN apt update \
 && apt dist-upgrade -y --purge \
 && apt install -y python3 python3-pip python3-cryptography python3-openssl python3-bcrypt \
                   jq curl make \
 && pip install --upgrade pip \
 && pip install pip-tools pipdeptree

COPY requirements.in /root
RUN  pip-compile -q --allow-unsafe --no-annotate --output-file=/root/requirements.txt /root/requirements.in \
 && pip install -r /root/requirements.txt

CMD [ "/bin/bash" ]
