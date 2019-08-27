FROM python:3-alpine

LABEL "com.github.actions.name"="Auto-merge my pull requests"
LABEL "com.github.actions.description"="Merge and clean-up the pull request after the checks pass"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="green"

RUN pip install requests

COPY merge_pr.py /

ENTRYPOINT ["python3", "/merge_pr.py"]

