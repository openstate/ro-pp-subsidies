FROM python:3

WORKDIR /opt/ro

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# CMD [ "python", "./your-daemon-or-script.py" ]
# CMD ["bash"]
CMD ["tail", "-f", "docker/requirements.txt"]
