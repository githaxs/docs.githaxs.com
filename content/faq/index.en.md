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