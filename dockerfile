FROM ubuntu:latest
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install python3.10
RUN apt install python3-pip -y
RUN pip install --upgrade pip
EXPOSE 5000
WORKDIR /app
COPY . /app
RUN pip --no-cache-dir install -r requirements.txt
CMD ["python3", "app.py"]