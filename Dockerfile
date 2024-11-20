FROM python:3.11
LABEL description = "Analytics Environment python 3.11"

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install jupyter -U && pip install jupyterlab
RUN pip3 install -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]