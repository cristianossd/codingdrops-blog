# Coding Drops (Blog)

![GitHub repo size](https://img.shields.io/github/repo-size/cristianossd/codingdrops-blog?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/cristianossd/codingdrops-blog?style=for-the-badge)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/cristianossd/codingdrops-blog?style=for-the-badge)

<img src="cover.png" alt="cover">

> This project contains the blog files for [codingdrops.io](http://codingdrops.io)

It has no fixed stack, check the **Built with** section which describes the current technologies.

### Built With

- [Jekyll](https://jekyllrb.com/): Transform your plain text into static websites and blogs
- [The Plain](https://github.com/heiswayi/the-plain): A minimalist Jekyll theme

## Getting Started

To get a local copy up and running follow the following steps.

### Prerequisites

- Ruby version 2.5.0 or higher, including all development headers (check your Ruby version using `ruby -v`)
- RubyGems (check your Gems version using `gem -v`)
- GCC and Make (check versions using `gcc -v`, `g++ -v`, and `make -v`)

Source ([Jekyll docs](https://jekyllrb.com/docs/installation/#requirements))

### Installation

1. Configure your RubyGems folder to avoid installing gems in `sudo` mode. Add those lines to your `.bashrc`, `.zshrc`, or any equivalent:

  ```sh
  # ruby/gems
  export GEM_HOME="$HOME/.gem"
  ```

2. Install the Jekyll and bundler gems:

  ```sh
  gem install jekyll
  gem install bundler -v "2.0.2"
  ```

3. Install the project dependencies:

  ```sh
  make deps
  ```

### Usage

Start the server with `make run`. It must prompt:

```sh
bundle _2.0.2_ exec jekyll serve
...
Server address: http://127.0.0.1:4000
Server running... press ctrl-c to stop.
```
