FROM python:3.10

RUN apt -qq update && apt -qq install -y git ffmpeg

RUN git clone https://github.com/kagutsuchi57/Rename-4GB /app

WORKDIR /app

RUN pip install -U -r requirements.txt

CMD [ "bash", "start.sh" ]
