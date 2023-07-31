FROM python:3

WORKDIR /opt/ro

COPY requirements.txt ./

RUN apt-get -qq -y update && apt-get install -y libreoffice-core libreoffice-calc libreoffice-common libreoffice-java-common default-jdk

RUN pip install --no-cache-dir -r requirements.txt

# CMD [ "python", "./your-daemon-or-script.py" ]
# CMD ["bash"]
CMD ["tail", "-f", "docker/requirements.txt"]
