# Deploy TYPO3 Capistrano

> Docker Image for deployment of TYPO3 CMS applications via Capistrano.

## What does it do?

This package provides a Docker image with preinstalled Capistrano for TYPO3.
It can be used for deployment of TYPO3 projects. See the [Gemfile](Gemfile)
for all included packages.

## Requirements

You need to provide a deployment config that resides in the `.deployment` 
directory of your project. See our [deployment package][1] for an example
configuration.

## Usage

Reference the Docker image in your `.gitlab-ci.yml` like follows:

```yaml
image: $CI_REGISTRY/devops/docker-images/deploy-typo3-capistrano
```

Now run `cap [target] [task]` to start the deployment.

[1]: https://gitlab.321.works/DevOps/templates/backend/deployment
