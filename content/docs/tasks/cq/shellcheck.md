---
title: "ShellCheck"
description: "Githaxs | ShellCheck"
lead: "Static Analysis for Shell Scripts."
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: true
images: []
menu:
  docs:
    parent: "cq"
weight: 630
toc: true
---

---

[ShellCheck](https://shellcheck.net) finds bugs in your shell scripts.
tests.

This task will run ShellCheck on any of your shell scripts.

**Note: The shell script must end with .sh**

### Example Configuration

```yaml
# githaxs_settings/ghx.yml

shellcheck:
  installation:
    org: true
```
