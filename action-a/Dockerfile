FROM python:3.6.7-stretch

LABEL "com.github.actions.name"="Hello World"
LABEL "com.github.actions.description"="Write arguments to the standard output"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/jefftriplett/python-actions"
LABEL "homepage"="https://github.com/jefftriplett/python-actions"
LABEL "maintainer"="Jeff Triplett <jeff.triplett@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
