FROM python:3.6.8-alpine

LABEL "name"="Python Action Pip"
LABEL "homepage"="https://github.com/jefftriplett/python-actions"
LABEL "maintainer"="Jeff Triplett <jeff.triplett@users.noreply.github.com>"
LABEL "repository"="https://github.com/jefftriplett/python-actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Python Action Pip"
LABEL "com.github.actions.description"="Lint your Python code with Pip"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY entrypoint.sh /entrypoint.sh

WORKDIR /workspace

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "--help" ]
