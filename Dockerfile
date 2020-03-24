FROM python:3.9.0a4-alpine3.10

WORKDIR /app

RUN chgrp root /app

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY app /app/app
COPY main.py  /app/


ENTRYPOINT [ "python" ]

CMD [ "main.py" ]