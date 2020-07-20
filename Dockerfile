# Container image that runs your code
ARG CODE_VERSION=4.8.2
FROM continuumio/miniconda3:${CODE_VERSION}

WORKDIR /
COPY . .
RUN conda env create -f githubActionsEnv.yml

# Make RUN commands use bash shell, and use the new environment:
SHELL ["conda", "run", "-n", "githubActionsEnv", "/bin/bash", "-c"]

# Make sure the environment is activated:
RUN echo "Make sure pandas is installed:"
RUN python -c "import pandas"

# ENTRYPOINT ["conda", "run", "-n", "githubActionsEnv", "python", "src/code.py", "&&", "tail", "-f", "/dev/null"] # for debugging, use tail -f /dev/null
ENTRYPOINT ["conda", "run", "-n", "githubActionsEnv", "python", "src/code.py", "&&", "tail", "-f", "/dev/null"]

# ENTRYPOINT ["entrypoint.sh"]
# ENTRYPOINT ["conda", "activate", "githubActionsEnv"]

# Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["entrypoint.sh"]

