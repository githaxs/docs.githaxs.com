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

This task ensures all files are formatted with prettier and allows
you to create globally shared configurations.

### Configuration

|parameter|description|required|
|---|---|---|
|prettier_config|A map of [prettier options](https://prettier.io/docs/en/options.html)| True|

### Example Configuration

```yaml
# githaxs_settings/ghx.yml

prettier:
  settings:
    org:
      # Cannot be overriden by repo specific settings
      final:
        prettier_config:
          singleQuote: true
          semi: false
      # Default value if repo specific settings do not exist
      default:
        prettier_config:
          singleQuote: true
          semi: false
   ```
