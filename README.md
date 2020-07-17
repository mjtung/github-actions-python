# Github Actions for Python

A very simple proof of concept, that uses Github Actions to perform workflows after every `git push`.  The workflow is to:

1. Download Miniconda
2. Install packages
3. Run tests

## Workflow definition
Look in [.github/workflows/continuous-integration-conda.yml](.github/workflows/continuous-integration-conda.yml)

## Github - Docker link

### Dockerfile
### entrypoint.sh
### action.yml
https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions
* Inputs are represented as environment variables
`INPUT_{VARIABLE_NAME}`
* Outputs store values for further workflow actions to use


## Docker

One way to distribute / deploy applications is to run them in Docker containers.  Docker containers rely on Docker images: https://docs.docker.com/docker-hub/official_images/.

One can rely on Docker Inc. to update the security of such images, if one uses official images.  See link above.