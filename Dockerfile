FROM python:3.10.6-alpine3.16

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --requirement requirements.txt

WORKDIR /docs
EXPOSE 8000

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
