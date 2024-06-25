---
title: Rate Limiting Algorithms
updated: 2024-06-35 08:28
---


Rate limiting is a technique used to control the rate of requests sent or
received by a server. It's commonly employed to prevent DDoS attacks, limit
web scraping, or control API quota usage. When dealing with rate-limiting
scenarios for our APIs, we often encounter numerous abstractions and tend
to rely on pre-defined libraries, plugins, services, or tools like Kong,
NGINX, and AWS API Gateway. Utilizing these tools can save software
engineering time by providing ready-made solutions instead of having to
implement everything from scratch.

Like many of you, I have relied on pre-defined tools in scenarios where
rate-limiting was necessary. The most interesting part is understanding how
the chosen technology works in the background and determining whether it is
overkill or well-suited for your use case.

In this coding drop, we will explore a set of algorithms behind rate-limiting
architectures: Token Bucket, Leaky Bucket, and Sliding Window Log. Although
there are other algorithms, these three are easier to understand and reasonably
effective for rate-limiting.

### Token Bucket

The Token Bucket algorithm is most commonly used in scenarios requiring bursty
data transfer. Imagine a bucket filled with tokens (T); requests can only be sent
if there are enough tokens in the bucket to "spend" for the request.

![token-bucket-overview](/assets/token-bucket-overview.png)

The algorithm takes two parameters: `bucket_capacity`, which is the maximum
capacity of tokens the bucket can hold, and `token_rate`, which is the rate at
which tokens are added to the bucket.

First, the bucket is refilled based on the `token_rate` definition, such as adding
tokens every minute. When a request arrives, and the bucket has enough tokens,
a token is removed, and the request is forwarded.

### Leaky Bucket

The Leaky Bucket algorithm smooths bursty input traffic, much like the Token Bucket,
but instead of allowing bursts by accumulating tokens, it ensures a steady stream
of requests regardless of burstiness.

{:.post-center}
![leaky-bucket-overview](/assets/leaky-bucket-overview.png)

Imagine the following example: a queue where incoming requests are added. The queue
processes requests at a fixed rate, allowing one request at a time. If the queue is
full, incoming requests are discarded. This mechanism ensures a constant flow rate,
regardless of how bursty the incoming traffic is.

### Sliding Window Log

The Sliding Window Log algorithm operates like a moving bucket. The idea is to
allow requests within a moving time window.

{:.post-center}
![sliding-window-log-overview](/assets/sliding-window-log-overview.png)

Consider a sliding window of 1 minute and size 4 (as shown in the image above).
Whenever a new request arrives, the rate limiter checks the request count in the
current sliding window. If the request count is below 4, the request is allowed
to proceed.

In another example, let's say we have a sliding window log that allows up to 10
requests per minute. If a new request arrives and the log shows that 10 requests
have already been made within the last minute, the new request will be rejected.

### Takeaways

Rate-limiting algorithms like **Token Bucket**, **Leaky Bucket**, and **Sliding Window Log**
are essential for maintaining the stability and performance of APIs and services.
By understanding how these algorithms work, you can choose the most appropriate
one for your needs and ensure efficient request handling.

### Resources

*  [https://www.cloudflare.com/pt-br/learning/bots/what-is-rate-limiting/](https://www.cloudflare.com/pt-br/learning/bots/what-is-rate-limiting/?utm_source=codingdrops.io)
*  [https://www.researchgate.net/publication/321744877_Datacenter_Traffic_Control_Understanding_Techniques_and_Trade-offs](https://www.researchgate.net/publication/321744877_Datacenter_Traffic_Control_Understanding_Techniques_and_Trade-offs?utm_source=codingdrops.io)
*  [https://blog.bytebytego.com/p/rate-limiting-fundamentals](https://blog.bytebytego.com/p/rate-limiting-fundamentals?utm_source=codingdrops.io)
*  Bucket icon created by Those Icons: [https://www.flaticon.com/free-icons/bucket](https://www.flaticon.com/free-icons/bucket)
*  [https://www.krakend.io/docs/throttling/token-bucket/](https://www.krakend.io/docs/throttling/token-bucket/?utm_source=codingdrops.io)
*  [https://www.sciencedirect.com/topics/computer-science/leaky-bucket-algorithm](https://www.sciencedirect.com/topics/computer-science/leaky-bucket-algorithm?utm_source=codingdrops.io)
