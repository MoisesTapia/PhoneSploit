FROM  kalilinux/kali
MAINTAINER equinockx

WORKDIR /home/

RUN apt-get update && \
    apt-get install -y android-tools-adb && \
    apt-get install -y android-tools-fastboot && \
    apt-get install -y  --no-install-recommends python2 && \
    apt-get install -y python-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /home/

RUN pip install -r requeriments.txt

ENTRYPOINT [ "python2" ]
CMD [ "main_linux.py" ]