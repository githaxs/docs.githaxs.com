---
title: "Terraform Format"
description: "Terraform Format | Content Application"
lead: "Ensure Terraform files are formatted correctly."
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

Terraform Format is built into the Terraform binary and has an opinionated
convention for how files should be formatted.

The [Terraform Format Task](https://github.com/githaxs/terraform-fmt) ensures files are formatted properly.

### Details

##### File Extensions

The task will only run on files that end with `.tf` and `.tfvars`

##### Files in Scope

The Terraform Format task does **not scan the entire repository**, it only scans the files that have **changed** in a Pull Request.

This decision was made to support legacy code bases and use incermental improvements rather than causing the first Pull Request to fail with hundreds of files needing to be reformatted.

If an entire repo needs to be reformatted it is best to do so manually either before or after installing the Prettier Task.

##### Auto Fix

One of the more annoying aspects of a failed linting check is having to context switch and push a commit to address the failure.
With the Githaxs it becomes easy.

If the check fails there will be a `Fix` button in the Check Run status. Simply click the button and the Task will fix any formatting
changes and add a commit onto the Pull Request.

You can also configure the task to automatically fix any formatting issues, without needing to even press a button, by setting the `auto_fix` option to true, see below for examples.

### Configuration

|parameter|description|required|
|---|---|---|
|auto_fix|A boolean to indicate if you want the Prettier Task to automatically fix any formatting issues.| False|

### Example Configurations

###### Install and Automatically fix on all Repos
```yaml
# githaxs_settings/ghx.yml

terraform-fmt:
  installation:
    org: true
  settings:
    org:
      final:
        auto_fix: true
```

### Bugs/Feature Requests

Noticed a problem with this task or would like a new feature? Please [Submit an Issue](https://github.com/githaxs/terraform-fmt/issues).

Pull Requests are also accepted :smile:
