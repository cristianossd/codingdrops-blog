---
title: Using Jekyll for My Blog
updated: 2021-09-10 11:15
---

It's important to start pointing up that the opinions in this post are my own. For me,
the decision to not use [Medium](medium.com), [dev.to](dev.to) or any other blog platform
is more about freedom than the provided resources of these applications, or the easiest
way to setup your blog and write your stuff, or enjoy the marketing potential that
these tools could make promoting your content. This freedom that I care about is what
I'll try to show up here.

If you come with expectations about a definitive guide to create your blog, I'm sorry but
it's not my focus. I think the pros/cons that I'll discuss below could help you with this
decision, but they aren't thoughts to create a type of ranking for blog engines or platforms.

### Why I care about this freedom

I am a Software Engineer, I decided to follow this area, to study, enter a university, find
awesome places to work, and what excites me more in this field is about freedom. Keep
calm that is not freedom to do whatever you want, hehe, it's about freedom to decide technology
for a new project, freedom to improve the stack of related projects from your team/squad,
freedom to specify and design an architecture or improve an existing one, freedom to have
this type of flexibility. Look that it's about to be happy with your career choice.

I am passionate about the opportunities to test technologies and create a blog is that. To
think about a simple engine, how to improve the stack, how to create an engine from scratch,
there are inifnite possibilities and I want to enjoy this opportunity to learn and apply
new stuffs that I am not strictly involved in my daily work.

## Technologies to look for

Ready-to-write platforms were avoided here, so, don't consider **Medium**, **dev.to** or any
other similar (Wordpress, CMSs, etc), we are going to focus on frameworks and libraries
for a blog engine.

The resources that I heard more about blog engines are [Gatsby](https://www.gatsbyjs.com/)
and [Jekyll](https://jekyllrb.com/). Let's discuss the advantages of each one and the
disadvantage gap that sounds important to me.

### Gatsby

Gatsby is newest than Jekyll and is written in [Node.Js](https://nodejs.org/en/). It's something
really cool due to the benefit of a big JavaScript community. Maybe, for this reason, the Gatsby
grew very fast, and in terms of blog engine, Gatsby seems to be the most used today.

In the client-side, Gatsby is using [React](https://reactjs.org/) to take advtange of a DOM
rendering framework. It also amplifies the usage by people who is comfortable with React. Gatsby
also opens more possibilities supporting [GraphQL](https://graphql.org/). Fetch data from
differents sources becomes easier with this integration.

The huge plus from Gatsby is that every site generated is a Progressive Web App (PWA). It enables
an awesome user experience with the support and availability in web and mobile environments.

But, I see some cons and they are points that people also talking about Gatsby. It has a high
learning curve even being based in some of the growest tech communities. This curve includes
knowledge of Javascript, React and, when necessary, GraphQL.

Some bad things (for me, maybe good for you) are:

- Gatsby sounds like the "Wordpress for React ecosystem". You'll need several plugins to add resources to your platform;
- The workflow to generate the site is slow. For a simple blog, I don't to take this time

### Jekyll

On the other side, we could consider Jekyll as the oldest blog engine comparing with the options used
today. It is written in [Ruby](https://www.ruby-lang.org/en/) and created by [GitHub](github.com)
co-founder [Tom Preston-Werner](https://tom.preston-werner.com/). This relation with GitHub
helped the engine to be spread worldwide with several contributions from open source community.

Jekyll works with templates shipped by an HTTP server. The templates are written with
[Markdown](https://daringfireball.net/projects/markdown/) and processed with [Liquid](https://shopify.github.io/liquid/)
which enables templates to use variables and perform logic statements.

From start to deploy, Jekyll is simple doing this. It's an easy setup, develop and publish your site
(blog, portfolio, etc), since to have GitHub as a good host. I didn't consider the learning curve
because Markdown (and Liquid) are very simple to use, the plugins are easy and well documented
to integrate. People also talk about the Search Engine Optimization (SEO), where Jekyll is great for.

The bad side is about community. It was used and improved a lot before the hype and growth of JavaScript
stack. You'll find fewer contributions than Gatsby and fewer updated resources (site templates, plugins).
The Ruby environment is not usual anymore, so, it's just for who wants to learn or like the stack.

## Conclusion

I decided to follow and use the technology different than usual for me. I am very comfortable with Ruby and
JavaScript, but I was seeing and dealing a lot with JavaScript stack. The gap of community also is an
opportunity for a several improvements to be made. Because of them, I chose Jekyll to start my blog. It'll
be nice to back deal with Ruby environment and to create my own template.

Finally, thfreedom is also about creating my own blog engine. The journey starts here and seeks this
challenge.

## References

- [Comparison of Gatsby vs Jekyll vs Hugo](https://www.gatsbyjs.com/features/jamstack/gatsby-vs-jekyll-vs-hugo)
- [Gatsby Docs](https://www.gatsbyjs.com/)
- [Jekyll Docs](https://jekyllrb.com/docs/)
- [Jekyll - Liquid](https://jekyllrb.com/docs/liquid/)
