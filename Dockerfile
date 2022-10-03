FROM python:3.10.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

RUN pip3 install git+https://github.com/octue/generate-pull-request-description.git@main

COPY generate_pull_request_description/entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
