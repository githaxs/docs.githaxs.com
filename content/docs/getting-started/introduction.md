---
title: "Introduction"
description: "Githaxs is a CI as a Service platform."
lead: "Githaxs is the <b>first</b> CI as a Service platform. Our platform is easy to setup and allows you to enforce standards across your entire organization."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "getting-started"
weight: 1
toc: true
---

## Get started

Githaxs provides two different GitHub Applications: Githaxs Workflow and Githaxs.

The [Githaxs Workflow](https://github.com/apps/githaxs-workflow) application **does not** have access to your application source code. It performs tasks based on Meta data (i.e. checking Pull Request Title, size of PR, etc) and helps you enforce standardized workflows across your entire engineering organization.

The [Githaxs](https://github.com/apps/githaxs) application **does** have access to your application source code. It performs tasks such as linting and static analysis. You can centrally configure settings for all of your Repos.

### Install Application

Installing either Githaxs application is done with a few clicks of a button.

1. Navigate to the GitHub application page for [Githaxs](https://github.com/apps/githaxs) or [Githaxs Workflow](https://github.com/apps/githaxs-workflow).
2. Click on `Install` or `Configure`.
3. Select the GitHub Organization you want to install the application on.
4. Select either `All repositories` or `Only select repositories`; if the latter select which repositories you wish to install the application on.
    * Note both Githaxs applications are configured from a repository named `githaxs_settings` within your organization. If you are installing the applications on select repositories ensure to create the `githaxs_settings` repo and ensure it is in the list of repos you select for installation.
5. Click `Install`
