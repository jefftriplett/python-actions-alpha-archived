FROM python:3.6.8-alpine

LABEL "name"="Python Action Pytest"
LABEL "homepage"="https://github.com/jefftriplett/python-actions"
LABEL "maintainer"="Jeff Triplett <jeff.triplett@users.noreply.github.com>"
LABEL "repository"="https://github.com/jefftriplett/python-actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Python Action Pytest"
LABEL "com.github.actions.description"="Test via Pytest"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="blue"


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /src/

RUN pip install --no-cache-dir \
        -r /src/requirements.txt && \
    rm -rf /root/.cache/

WORKDIR /src/

COPY . /src/

ENTRYPOINT [ "/src/entrypoint.sh" ]
