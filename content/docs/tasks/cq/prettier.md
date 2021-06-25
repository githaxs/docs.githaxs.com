---
title: "Prettier"
description: "Prettier | Content Application"
lead: "Ensure files are formatted correctly."
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: false
images: []
menu:
  docs:
    parent: "cq"
weight: 630
toc: true
---

---

[Prettier](https://prettier.io/) is an opinionated code formatter
created to reduce time spent deliberating over which style conventions
to use.

The [Prettier Task](https://github.com/githaxs/prettier) ensures files are formatted properly.
Now you can run Prettier on all of your Organizations repos with three lines of configuration.

### Details

##### File Extensions

The Prettier task will only run on files that end with the following extensions: js, ts, scss, css, yaml, yml, html, jsx.

##### Files in Scope

The Prettier task does **not scan the entire repository**, it only scans the files that have **changed** in a Pull Request.

This decision was made to support legacy code bases and use incermental improvements rather than causing the first Pull Request
to fail with hundreds of files needing to be reformatted.

If an entire repo needs to be reformatted it is best to do so manually either before or after installing the Prettier Task.

##### Auto Fix

One of the more annoying aspects of a failed linting check is having to context switch and push a commit to address the failure.
With the Githaxs Prettier Task it becomes easy.

If the check fails there will be a `Fix` button in the Check Run status. Simply click the button and the Task will fix any formatting
changes and add a commit onto the Pull Request.

![](/prettier-fix.png)


You can also configure the task to automatically fix any formatting issues, without needing to even press a button, by setting the `auto_fix` option to true, see below for examples.

### Configuration

|parameter|description|required|
|---|---|---|
|prettier_config|A map of [prettier options](https://prettier.io/docs/en/options.html).| True|
|auto_fix|A boolean to indicate if you want the Prettier Task to automatically fix any formatting issues.| False|

### Example Configurations

###### Install and Automatically fix on all Repos
```yaml
# githaxs_settings/ghx.yml

prettier:
  installation:
    org: true
  settings:
    org:
      final:
        auto_fix: true
```

###### Specify defaults and specify overrides for a repo
```yaml
# githaxs_settings/ghx.yml

prettier:
  installation:
    org: true
  settings:
    org:
      default:
        prettier_config:
          singleQuote: true
          semi: false
    repos:
      - web:
          prettier_config:
            singleQuote: false
            semi: true
```

###### Specify defaults and specify overrides by repo topic
```yaml
# githaxs_settings/ghx.yml

prettier:
  installation:
    org: true
  settings:
    org:
      default:
        prettier_config:
          singleQuote: true
          semi: false
    repo_topics:
      web:
        prettier_config:
          singleQuote: false
          semi: true

      api:
        prettier_config:
          singleQuote: false
```


### Bugs/Feature Requests

Noticed a problem with this task or would like a new feature? Please [Submit an Issue](https://github.com/githaxs/prettier/issues).

Pull Requests are also accepted :smile:
