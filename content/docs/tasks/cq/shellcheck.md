---
title: "ShellCheck"
description: "Githaxs | ShellCheck"
lead: "Static Analysis for Shell Scripts."
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

[ShellCheck](https://shellcheck.net) finds bugs in your shell scripts.
tests.


### Details

##### File Extensions

ShellCheck will only run on files that end with `.sh`.

##### Files in Scope

Only files that have **changed** in a Pull Request will be analyzed by this task.

### Configuration

There are currently **no** configuration options for ShellCheck other than to install it.

##### Example Configuration

```yaml
# githaxs_settings/ghx.yml

shellcheck:
  installation:
    org: true
```
