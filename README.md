Deploy TYPO3 Capistrano
=======================

Docker Image for deployment of TYPO3 CMS applications via capistrano.

### What does it do?
* provides a docker image with capistrano for TYPO3
* for included packages please see the Gemfile

### Requirements
* configuration files for capistrano

### Usage
* build a container from this image
* link your project files into this image
* run `cap [target] [task]`
