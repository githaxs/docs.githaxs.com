---
title: "Pylint"
description: "Pylint | Content Application"
lead: "Star your Python code!"
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

[Pylint](https://pylint.org) enforces the PEP8 style guide and detects errors
in your Python code.

### Details

##### Files Scanned

Files that end in `.py` and that have been changed in a Pull Request will be scanned. This task **does not** scan the entire repo.

### Configuration

The task does not support any custom configuration except for installing

### Example Configuration

```yaml
# githaxs_settings/ghx.yml

pylint:
  installation:
    org: true
```

### Bugs/Feature Requests

Noticed a problem with this task or would like a new feature? Please [Submit an Issue](https://github.com/githaxs/pylint/issues).

Pull Requests are also accepted :smile:
