FROM ubuntu

RUN apt-get update && apt-get install

RUN apt-get install wget -y

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

RUN apt-get update

RUN apt-get install google-chrome-unstable -y

RUN apt-get install google-chrome-stable -y

CMD google-chrome-unstable --headless --no-sandbox --remote-debugging-port=9222 --remote-debugging-address=0.0.0.0  --disable-gpu --no-zygote

