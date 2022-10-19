# Demo - Inherit secrets in a github organization

## Description

In a context of an organization, you can need to create common GitHub actions using reusable workflow and not have to copy/paste a workflow in all repositories you want to use it.

Starting with that, you may need to manage secrets between the reusable workflow and the workflows that will use it.

To not have to manage the share between those two, Github has an option `secrets: inherit`.

Inherit option will tell your workflow to share the secrets with the reusable workflow.

## Demo

- In this repository, we have a reusable workflow `demo-inherit-secret` with a required secret `demoInherit`.
- In the repository [github-action-test](https://github.com/grasdouble/github-action-tester/blob/develop/.github/workflows/demo-inherit-secret-usage.yml), we have a workflow `demo-inherit-secret-usage` who will use `demo-inherit-secret` with the secrets as inherit.

We have two possible result:

- the reposotory `github-action-test` doesn't have the secret `demoInherit` defined and the job will fail.

```bash
Secret demoInherit is required, but not provided while calling.
```

- the reposotory `github-action-test` has the secret `demoInherit` defined and the job will succeed and the following message will be printed in the logs.

```bash
This message is displayed because this reusable workflow recieved the secret demoInherit with inherit option
```

## Refs

https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idsecretsinherit
