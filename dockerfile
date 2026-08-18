FROM ubuntu
WORKDIR /nit
COPY . /nit
RUN apt-get update && apt-get install -y python3 python3-pip && pip3 install --no-cache-dir --break-system-packages -r requirements.txt
EXPOSE 5000 
CMD ["python3", "app.py"]
