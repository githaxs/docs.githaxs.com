---
title: "Configuration"
description: "Githaxs | Configuration"
lead: ""
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "getting-started"
weight: 2
toc: true
---

Both Githaxs applications are configured from a repo named `githaxs_settings` with a file named `ghx.yml`.

{{< alert icon="👉" text="Configurations are read from githaxs_setting/ghx.yml." >}}

After you install the Githaxs Applications in your GitHub Organization, you can start configuring tasks to run on your repositories. A task can be configured to run on a repo in multiple different ways providing you maximum flexibility and convenience.

##### Org

Setting this key to true will enable a task to run on every repository you installed the GitHub Application on in the [Getting Started](/docs/getting-started/introduction/#install-application) steps.

##### Repos

Using this key allows you to specify specific repositories to run a task on. The GitHub Application must also be installed on the same repositories.

##### Repo Languages

[GitHub](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-repository-languages) uses the open source Linguist Library to determine which languages exist in your repository. You can use this key to run a task on repos that contain code with a specific language. For example, if you want to run [Prettier](/docs/tasks/cq/prettier) on all repositories that contain JavaScript.

{{< alert icon="👉" text="Tasks will not run unless code using the language has already been committed to the repo." >}}


##### Repo Topics

GitHub allows you to classify your repositories using [Topics](https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/classifying-your-repository-with-topics). Using this key you can configure a task to run on all repos that have been classified with a topic. For example, you may want to run [Pylint](/docs/tasks/cq/pylint) on all repos with the topic `api`.

##### Example

Here is an example configuration that demonstrates each way the [Title Lint](/docs/tasks/workflow/title-lint) task can be configured to run on a repo:

{{< alert icon="👉" text="If a repo matches <b>any</b> condition the task will run." >}}
```yaml
title-lint:
  installation:
    # Run title lint on every repo the GitHub Application is installed on
    org: true
    # Run title lint on the following specific repositories
    repos:
      - foo
      - bar
    # Run title lint on repos with the following languages (as determined by GitHub)
    repo_languages:
      - Python
      - JavaScript
      - HCL
    # Run title lint on repos with these topics
    repo_topics:
      - api
      - web
```


#### Task Settings
In addition to configuring which repos a task will run on, you can provide settings for tasks that are configurable.

As an example, the Title Lint task will check Pull Request titles to ensure they match a defined pattern which is provided by the `regex` parameter.

##### Globally

You can globally configure a task settings by using the `org` key under settings. Within `org` you can use `final` to indicate settings that **cannot** be overridden or `default` which will be used if no other settings are provided.

##### Repo Languages

You can configure a task based on the language contained in the repo, as determined by GitHub. The language setting of the predominent language in the repo will be used. If you wish to change this behavior you can provide a `priority` value and the highest priority settings will take precedence.

##### Repo Topics

Similar to repo languages, you can provide settings based on repo topics. If a repo has more than one topic which matches multiple different settings the `priority` will be used to determine precedence. If no `priority` is provided the final settings will be determined in a non-deterministic way.

##### Repo Name

Lastly, you can provide settings for a specific repo.

##### Determining Final Settings

Settings will be applied in the following order, with those coming later having higher precedence:

1. Global Default
2. Repo Languages
3. Repo Topics
4. Repo Name
5. Global Final

##### Example
Here are the different ways to configure a task:

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


