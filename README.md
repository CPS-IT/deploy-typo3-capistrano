# Deploy TYPO3 Capistrano

> Docker Image for deployment of TYPO3 CMS applications via Capistrano.

## What does it do?

This package provides a Docker image with preinstalled Capistrano for TYPO3.
It can be used for deployment of TYPO3 projects. See the [Gemfile](Gemfile)
for all included packages.

## Requirements

You need to provide a Capistrano deployment config. See our [deployment package][1]
for an example configuration.

## Usage

Reference the Docker image in your `.gitlab-ci.yml` like follows:

```yaml
image: $CI_REGISTRY/devops/docker-images/deploy-typo3-capistrano:stable
```

Now run `cap [target] [task]` to start the deployment.

### Image tags

The following image tags are available:

| Tag         | Branch name          |
|-------------|----------------------|
| `stable`    | `main`               |
| `latest`    | `develop`            |
| `<version>` | _tags, e.g. `1.0.1`_ |
| `feature-*` | `feature/*`          |

## Important notes

The delivered version of Capistrano is patched to avoid random `can't dump IO`
errors. See the corresponding [merge request][2] that introduced this patch.

[1]: https://gitlab.321.works/DevOps/templates/backend/deployment
[2]: https://gitlab.321.works/DevOps/docker-images/deploy-typo3-capistrano/-/merge_requests/2
