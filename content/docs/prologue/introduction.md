---
title: "Introduction"
description: "Githaxs is a CI as a Service platform."
lead: "Githaxs is a CI as a Service platform. Stup and configure CI tasks on hunrdeds of repos within minutes."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 100
toc: true
---

## Get started

Githaxs provides two different GitHub Applications: Githaxs Meta and Githaxs.

The [Githaxs Meta](https://github.com/apps/githaxs-meta) application **does not** have access to your application source code. It performs checks on and tasks based on Meta data (i.e. checking Pull Request Title, size of PR, etc).

The [Githaxs](https://github.com/apps/githaxs) application **does** have access to your application source code. It performs tasks such as linting, static scanning, and running unit tests.

### Install Application

Installation of either Githaxs application is done with a few clicks of a button.

1. Navigate to the GitHub application page for [Githaxs](https://github.com/apps/githaxs) or [Githaxs Meta](https://github.com/apps/githaxs-meta).
2. Click on `Install` or `Configure`.
3. Select the GitHub Organization you want to install the application on.
4. Select either `All repositories` or `Only select repositories`; if the latter select which repositories you wish to install the application on.
5. Click `Install`


### Configure Tasks

Both Githaxs applications read configurations from a repo named `githaxs_settings` with a file named `ghx.yml`.

{{< alert icon="👉" text="Configurations are read from githaxs_setting/ghx.yml." >}}

A task can be configured to run on a repo in multiple different ways. Here is an example configuration that demonstrates each way for the `title-lint` task:

```yaml
title-lint:
  installation:
    # Run title lint on every repo the GitHub application is installed on
    org: true
    # Run title lint on the following repos only
    repos:
      - foo
      - bar
    # Run title lint on repos with languages as determined by GitHub
    repo_languages:
      - python
      - javascript
    # Run title lint on repos with these topics
    repo_topics:
      - api
      - web
```

Note that if any of the installation conditions are true for a repository the task will be run for the repo.

In addition to configuring which repos a task will run on you can provide configuration options for tasks that are configurable.

As an example, the Title Lint task will check Pull Request titles to ensure they match a defined pattern which is provided by the `regex` parameter. Here are the different ways to configure a task:

```yaml
title-lint:
  settings:
    org:
      # Enforced standard for the entire orginization that cannot be overridden
      final:
        regex: "[A-Z]+-[0-9]+"
      # Default value for organization.
      # Can be overridden by repo specific settings.
      default:
        regex: "[A-Z]+-[0-9]+"
  # Repo specific settings
  repos:
    - names:
        - foo
        - bar
      settings:
        regex: "[A-Z]+-[0-9]+"
```
