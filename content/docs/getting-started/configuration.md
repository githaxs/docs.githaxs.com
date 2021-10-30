---
title: "Configuration"
description: "Githaxs | Configuration"
lead: ""
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "getting-started"
weight: 2
toc: true
---

{{< alert icon="👉" text="You must be an admin in your GitHub Organization to install or configure Tasks." >}}

After installing the Githaxs Application certain tasks will start running by default on your entire organization. You will be re-directed to `my.githaxs.com`
where you can update task configurations for your GitHub Organization.

#### Task Installation

A task can be configured to run in multiple different ways providing you maximum flexibility and convenience.

The first option is to install a task on your `Entire Org`. With this option the task will run on *every* repository the Githaxs application is installed on.

If you would like to run a task on only certain repos you can uncheck `Entire Org` and add a list of Repo Names or Repo Topics.


#### Task Settings
In addition to configuring which repos a task will run on, you can provide settings for tasks that are configurable.

As an example, the Title Lint task will check Pull Request titles to ensure they match a defined pattern which is provided by the `regex` parameter.

###### Org Default

Org Default settings will be used if no other settings for a task have been set.

###### Repo Topics

You can provide settings based on repo topics. For example, all repos with a topic `api` could be configured one way and repos with
a topic `web` could be configured a different way.

###### Repo Name

You can provide settings for a specific repo. Repo specific settings will override repo topic settings.

###### Org Final

Org Final settings will take final precedence and apply to all repos within the GitHub Organization.

###### Recap

Settings will be applied in the following order, with those coming later having higher precedence:

1. Org Default
2. Repo Topics
3. Repo Name
4. Org Final