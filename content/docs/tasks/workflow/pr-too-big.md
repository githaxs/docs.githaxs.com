---
title: "PR Too Big"
description: "Githaxs | PR Too Big"
lead: "Ensure Pull Requests are small and easily reviewable"
date: 2020-10-06T08:49:31+00:00
lastmod: 2020-10-06T08:49:31+00:00
draft: false
images: []
menu:
  docs:
    parent: "workflow"
weight: 630
toc: true
---

---

[Atlassian](https://www.atlassian.com/blog/git/written-unwritten-guide-pull-requests), [Small Business Programming](https://smallbusinessprogramming.com/optimal-pull-request-size/), and [Google](https://cloud.google.com/architecture/devops/devops-process-working-in-small-batches) have made the case for using small pull requests to improve team efficiency and reduce errors.

PR Too Big will programatically enforce keeping pull requests small while also providing an override feature.

### Configuration
|parameter|description|required|default|
|---|---|---|---|
|max_changed_files| The maximum number of changed files in a pull request| no | 0 |
|max_additions| The maximum number of additions in a pull request as calculated by GitHub| no | 0 |
|max_deletions| The maximum number of deletions in a pull request as calculated by GitHub| no | 0 |

### Example Configuration
```yaml
# githaxs_settings/ghx.yml

pr-too-big:
  settings:
    org:
      default:
        max_changed_files: 20
        max_additions: 200
        max_deletions: 200
```
