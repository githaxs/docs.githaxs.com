---
title: "Security"
description: "Githaxs is a CI as a Service platform."
lead: "Our platform is built with Security as a primary consideration. We understand our responsibility to protect against any unauthorized access to our clients GitHub environment or application code."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 100
toc: true
---

## Our Practices

### Secure Webhooks

To limit the requests our platform receives we have followed the guide GitHub offers for [Securing your webhooks](https://docs.github.com/en/developers/webhooks-and-events/securing-your-webhooks). We validate the signature of every request and reject the requests which have not been signed with a secret token.

### Data Protection

To ensure the protection of your data we ensure all data is encrypted at rest and in transit. Additionally, any tasks which clone GitHub repositories store the cloned repo in ephemeral storage and explicitly delete the repository as an extra precaution after the task has completed.

### Access Controls

Our platform is hosted on AWS and we follow the [AWS Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) to prevent any unauthorized access to our platform. Access to our production environment is strictly limited and controlled.

### GitHub Tokens

GitHub applications generate tokens which allow the application to perform actions using the GitHub API. The tokens our applications generate are never stored and are set to expire after ten minutes.
