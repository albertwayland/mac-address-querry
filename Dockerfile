FROM python:3.10

LABEL Manintainer=Albert

RUN pip install --upgrade pip

RUN pip install pyOpenSSL

EXPOSE 5000 5443

COPY macaddress.py /

RUN ["chmod", "+x", "/macaddress.py"]

CMD ./macaddress.py
