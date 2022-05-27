FROM python:3-alpine

ARG VERSION="bf07870b4fda9d9028af1e8367a622a57024b9a4"

RUN apk add --no-cache git && \
    pip install --no-cache-dir -e git+https://github.com/conwetlab/ckanext-oauth2.git@${VERSION}#egg=ckanext-oauth2 && \
    m -rf /var/cache/apk/* /tmp/* /usr/share/doc

ENTRYPOINT ["pip", "freeze"]
