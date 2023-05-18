---
title: Do not Lose Friends Because of Code Reviews
updated: 2023-05-18 08:07
---

First of all, this post contains some thoughts collected over the years
in the software industry, working with thousands of engineers worldwide.
Most of them were realized after productive discussions about code reviews
with some teammates.

So, avoiding losing friends because of code reviews is a challenging job,
at least for people that aren't familiar with the practices below. Sometimes,
you sit in the code owner position, and sometimes in the reviewer position.
Let's analyze each one in a simple and straightforward way:

### Code Owner Position

Tio Ben has a tip for you:

![tio-ben-tip](/assets/tio-ben-code-owner-tip.png)

There's no way around it if your code doesn't look good. There's no magic if
your code doesn't look good. Here are some best practices to deal with it:

* Is your code change something trivial to implement? If not, try to agree on the approach before coding;
* "Good Neighbor Policy", leave the code better than how you found it, for repository owners or contributors;
* The best practices you apply for production code must be applied to the test code as well;
* If needed, provide code comments, it's good documentation, btw;
* Try to follow the standards of the repository you are working on. The code shouldn't have your characteristics;
* Avoid side effects. Prefer approaches on your code that won't affect other modules;

The first impression counts! Your Pull Request (PR) presentation should look
good as well. These topics may help you:

* Provide a good title and description for the PR. Context is always welcome and it works as documentation for your team;
* Include a test plan on the PR. It helps your peers to simulate the changes;
* Also, add a revert plan. Link any other commit or PR that is related and must be considered in a reverting scenario;
* Send small PRs and iterate over one self-contained change at a time. The Small CLs memo is a mandatory reading;
* Take time to review it by yourself before opening the PR. "Does it look good to you?"
* Think about people who need to review your PR, can improve the approach, or has more context about the change. They might be the right reviewers for it;
* Please, choose different reviewers from the people you are paired with;
* And, of course, a double-check is always welcome! Review the changes before merging;

Last, but not least in code owner scope, give a reasonable time to the reviewers to review.
If the time is short, they won't have a chance to review it efficiently.

### Reviewer Position

Before reviewing, pretend that you are the code's owner too. Here are some best
practices, less than for authors, but important in the same way:

* Don't approve after a slight review. Try to dedicate enough time to it because the reviewers are also responsible for the code;
* Reserve the appropriate time to review;
* Provide constructive and actionable comments in the code;
* Prefer team consistency over personal. The remaining codebase must stay consistent; 
* Avoid long discussions in the code review. Rely on addressing them offline (Slack);
* Share positive feedback. Good work recognition is always welcome;
* Evaluate the approach and implementation design before style;
* "Oh, but I have a lot of work to do"... Please, don't be a bottleneck. Prioritize unblocking your teammates by reviewing over implementing your code;
* If you are not confident about your review, it's ok to explicitly say that it needs additional review;

That's it! I hope you don't lose your friends because of code reviews anymore.
