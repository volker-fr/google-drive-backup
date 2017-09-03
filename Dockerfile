FROM python:3-alpine

# repo issue
#RUN apk --update add gcc musl-dev libxml2-dev libxslt-dev

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY drive.py .

ENTRYPOINT [ "python", "./drive.py" ]
