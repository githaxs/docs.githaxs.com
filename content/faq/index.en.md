---
title: "Frequently Asked Questions"
description: "this is meta description"
draft: false
_build:
  render: never
  list: never
---

{{< faq "I need something unique, can you make it?" >}}
Maybe. Please reach out to us with specific details of your request and we will get back to you.
{{</ faq >}}

{{< faq "Which files does Githaxs lint/format?" >}}
Githaxs will only check the files that have changed in the Pull Request. We decided to take this approach for two reasons:
improve performance and incremental improvement. If linting/formatting a large code base it could result in a large amount
of changes which could be overwhelming. 
{{</ faq >}}

{{< faq "Do I need a Credit Card to sign up?" >}}
No.

You can use Githaxs for 7 days for free without using a Credit Card to sign up. After the 7 day trial you will need to
subscribe to access our premium features. 
{{</ faq >}}

{{< faq "How do I login?" >}}
Once you are at our [Management Dashboard]("https://my.githaxs.com") you login via GitHub. We verify your GitHub user permissions
and then determine the access you have to various organizations.

Githaxs *does not* maintain a list of users and/or permissions. All permissions are based on your access to GitHub.
{{</ faq >}}


{{< faq "How do I debug broken pipeline tasks?" >}}
You don't. We do.

We work hard to ensure all of our tasks are reliable and execute without any issues. We understand the importance of not blocking builds.
If there is a task that has an issue we get notified via our monitoring and will deploy a fix as promptly as possible.
{{</ faq >}}

{{< faq "Which hosted Git Repositories do you support?" >}}
Currently we only support GitHub.

Stay tuned, we plan on extending Githaxs to support our customers no matter where they host their source code. Please reach out to us and tell
us which provider you use so we can prioritize based on your needs!
{{</ faq >}}