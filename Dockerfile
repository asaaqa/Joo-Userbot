FROM asaaqa/Joo-userbot:slim-buster

RUN git clone https://github.com/asaaqa/Joo-userbot.git /root/Joo-userbot

WORKDIR /root/Joo-userbot

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Joo-userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
