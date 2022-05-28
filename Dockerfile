FROM python:3-alpine

COPY requirements.txt .

RUN apk add --no-cache git && \
    pip install --no-cache-dir -r requirements.txt && \
    rm -rf /var/cache/apk/* /tmp/* /usr/share/doc

ENTRYPOINT ["pip", "freeze"]
