FROM python:3.6.8-alpine

LABEL "com.github.actions.name"="Hello World"
LABEL "com.github.actions.description"="Write arguments to the standard output"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/jefftriplett/python-actions"
LABEL "homepage"="https://github.com/jefftriplett/python-actions"
LABEL "maintainer"="Jeff Triplett <jeff.triplett@users.noreply.github.com>"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /src/

RUN pip install \
    --no-cache-dir \
    -r /src/requirements.txt \
    && rm -rf /root/.cache/

WORKDIR /src/

COPY . /src/

ENTRYPOINT [ "/src/entrypoint.sh" ]
