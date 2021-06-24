---
title: "Introduction"
description: "Githaxs is a CI as a Service platform."
lead: "Githaxs is a CI as a Service platform. Setup and configure CI tasks on hunrdeds of repos within minutes."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "getting-started"
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
      - Python
      - JavaScript
      - HCL
    # Run title lint on repos with these topics
    repo_topics:
      - api
      - web
```

Note that if any of the installation conditions are true for a repository the task will be run for the repo.


#### Task Settings
In addition to configuring which repos a task will run on you can provide settings for tasks that are configurable.

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
  repo_languages:
    JavaScript:
      regex: "(feat|fix): .*"
  repo_topics:
    web:
      regex: "(foo|bar): .*"
      priority: 30
    api:
      regex: "(bar|baz): .*"
      priority: 20
  # Repo specific settings
  repos:
    - web-tool-repo:
        regex: "[A-Z]+-[0-9]+"
```

##### Globally

You can globally configure a task settings by using the `org` key under settings. Within `org` you can use `final` to indicate settings that **cannot** be overridden or `default` which will be used if no other settings are provided.

##### Repo Languages

You can configure a task based on the language contained in the repo, as determined by GitHub. The language setting of the predominent language in the repo will be used. If you wish to change this behavior you can provide a `priority` value and the highest priority settings will take precedence.

##### Repo Topics

Similar to repo languages, you can provide settings based on repo topics. If a repo has more than one topic which matches multiple different settings the `priority` will be used to determine precedence. If no `priority` is provided the final settings will be determined in a non-deterministic way.

##### Repo Name

Lastly, you can provide settings for a specific repo.

#### Determining Final Settings

Settings will be applied in the following order, with those coming later having higher precedence:

1. Global Default
2. Repo Languages
3. Repo Topics
4. Repo Name
5. Global Final

