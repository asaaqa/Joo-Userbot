FROM asaaqa/Joo-userbot:busterv2

RUN git clone https://github.com/asaaqa/Joo-Userbot.git /root/Joo-userbot

WORKDIR /root/Joo-userbot

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Joo-userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
