---
title: "Code Freeze"
description: "Code Freeze | Meta Application"
lead: "Enforce code freezes programatically"
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

## Code Freeze

Allows you to prevent deployents during sensitive times/days of the year.

If you're an e-commerce company you may want to restrict deployments just before Black Friday or your biggest sales day of the year. Perhaps you want a relaxing holiday for your employees over Christmas and New Years. Maybe you don't want to deploy on weekends. Whatever the case may be, you can enforce these restrictions with this task.

The task also has a "break glass" feature in the event you need to urgently deploy a hot fix. When a user overrides the failing check the task will comment on the status check indicating who had to deploy.


### Configuration

|parameter|description|required|default|
|---|---|---|---|
|block_times| A **list** of [CRON expressions](https://crontab.pro/) indicating when pull requests should not be merged. Note that times are in **UTC**.| yes |  |

### Example Configuration
```yaml
# <repo name>/ghx.yml

code-freeze:
  settings:
    org:
      final:
        block_times:
        # Block merges on Saturday and Sunday
          - "* * * * 6,0"
```

### Actions
|name|description|
|---|---|
|override| Manually override a failing check to passing. The task will post a comment on GitHub indicating which user has overridden the result and allow deployment of code.|