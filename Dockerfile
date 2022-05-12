FROM greycilik/cilikuserbot:buster

RUN git clone -b Iniadalahbot https://github.com/Ergans33/Iniadalahbot /home/Iniadalahbot/ \
    && chmod 777 /home/Iniadalahbot \
    && mkdir /home/Iniadalahbot/bin/

COPY ./sample_config.env ./config.env* /home/Iniadalahbot/

WORKDIR /home/Iniadalahbot/

CMD ["python3", "-m", "userbot"]
