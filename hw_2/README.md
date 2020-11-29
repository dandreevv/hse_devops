## Task

Setup personal GitLab with CI/CD.

## Solution

I use official [GitLab Docker image](https://docs.gitlab.com/omnibus/docker/README.html) with default settings. In additional I use [GitLab runner](https://docs.gitlab.com/runner/) wich will execute our CI piplines.

## Setup

To setup GitLab stack you should:

1. Create `.env` file, in which you will able to set env sparameters, via:
    ```bash
    ./setup.sh
    ```

2. Start up GitLab web and runner containers via:

    ```bash
    docker-compose up -d
    ```

3. Register runner via:

    ```bash
    docker run --rm -it -v {$GITLAB_RUNNER_CONFIG}:/etc/gitlab-runner gitlab/gitlab-runner register --docker-network-mode gitlab_network
    ```

## Usage

To start use a GitLab CI/CD you must add [`.gitlab-ci.yml`](https://docs.gitlab.com/ee/ci/yaml/README.html) to any project which you will push to your local repository.

Example of `.gitlab-ci.yml` is located in the folder `./CI-CD`.
It has three stages: build, test and package. Standart simple CI/CD pipline will have the same stahes.
