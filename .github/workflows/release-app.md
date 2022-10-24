# Manage release creating PR on develop and main and creating release tag

## Description

This github action will manage release process creating:

- a release branch
- a related tag
- a github release
- a pull request for develop
- a pull request for main

This workflow is reusable

## inputs

- scope: the scope will define how the version will be ecreased (prepatch, patch, preminor, minor, premajor, major, prerelease)

## Refs

- https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads
- https://github.com/marketplace/actions/github-create-tag-release
