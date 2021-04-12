---
title: "Title Lint"
description: "Title Lint | Meta Application"
lead: "Ensure Pull Request Titles follow a convention."
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: false
images: []
menu:
  docs:
    parent: "tasks"
weight: 630
toc: true
---

## Title Lint

Title Lint ensures all Pull Request titles follow a similar pattern.

This application is useful if you follow standards such as conventional commit or as part of your change managegment process to ensure Pull Requests are linked back to your work management tool (i.e. Jira).

### Configuration

|parameter|description|required|
|---|---|---|
|regex| The regular expression to test Pull Request titles agains| yes

### Example Configuration

```yaml
# githaxs_settings/ghx.yml

title-lint:
  org: true
  org_settings:
    # Cannot be overriden by repo specific settings
    final:
      regex: "[A-Z]+-[0-9]+"
    # Default value if repo specific settings do not exist
    default:
      regex: "[A-Z]+-[0-9]+"
```