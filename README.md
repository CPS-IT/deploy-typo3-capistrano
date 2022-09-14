# Deploy TYPO3 Capistrano

> Docker image for deployment of TYPO3 CMS applications via Capistrano, based on
> [`dkdeploy-typo3-cms`][4].

## What does it do?

This package provides a Docker image with preinstalled Capistrano for TYPO3.
It can be used for deployment of TYPO3 projects. See the [Gemfile](Gemfile)
for all included packages.

## Requirements

You need to provide a Capistrano deployment config. See [capistrano documentation][1]
for details.

## Usage

Reference the Docker image in your CI/CD pipeline e.g.:

```yaml
image: cpsit/deploy-typo3-capistrano:stable
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
errors.

## Migration

### 1.x → 2.x

* SCM value `:copy` is deprecated in Capistrano.
  - Remove config `set :scm, :copy` from your `deploy.rb` file. `dkdeploy-core`
    already configures `:copy` as default value.
* Release folder name pattern has changed.
  - There's nothing to do. Capistrano will print a warning until all release
    folders with the old name schema are removed. This happens automatically
    during the `deploy:cleanup` task.

[1]: https://capistranorb.com/
[3]: https://hub.docker.com/r/cpsit/deploy-typo3-capistrano
[4]: https://github.com/dkdeploy/dkdeploy-typo3-cms
