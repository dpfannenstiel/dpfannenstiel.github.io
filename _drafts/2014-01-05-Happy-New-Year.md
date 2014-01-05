---
layout: post 
title: New Year, New Blog
excerpt: Happy New Year!  I\'m beginning my year of blogging by setting up a blog using Jekyll.
date: 2014-01-05 17:30:00 -0500
---
Happy New Year!

At the close of 2013 I started looking for a project to occupy my 2014.  Something to keep me active and engaged in my 
off hours.  You know, a hobby.  As I ran through the possible options they all came back to 
\"do something and blog about it\".

I was vaguely familiar WordPress and installed it quickly.  Though I don\'t have much 
experience with HTML or PHP, I did find a plugin that supported Markdown editing.
As I have been using Markdown extensivly to do documentation on other projects I thought this meant I wouldn\'t have
to learn a new technology.

Mid-way through my first blogpost I realized I didn\'t care for the way the base theme, Twentythirteen, 
was handling &lt;code> blocks.  I began shopping around for a better theme.  Having found none I 
liked, I resolved to write my own WordPress theme.  I began tinkering with WordPress, reading source code, and hacking at a solution.  I was pleased with the progess I made and had made great strides towards my principle goal: Excellent handling of &lt;code> blocks.

Speaking with a coworker, though, I was told about Github Pages and [Jekyll](http://jekyllrb.com); which have combined to form the platform on which you are now reading this blog.  I will leave the installation guide to [Github Pages](http://pages.github.com). The explination found there is excellent.  I do want to mention a few reasons why I\'ve chosen to concentrate on Github Pages and Jekyll as my blog host.

* **Markdown** - As I said earlier, I\'ve been using Markdown related products to add documentation to some projects I\'m currently working on.  I\'ve become very comfortable with the language

* **Free** - Github Pages are repositories on Github and, as long as you have no problem keeping your repository public, it\'s free.  You really can\'t shake a stick at that.  Some people, myself included, may balk at the idea of leaving their source code out in the open for anyone to see.  Since leaving the repository public doesn\'t affect copyright and this isn\'t code I\'m interested in trading on, I found the cost/benefit analysis supported it\'s use.

* **Local Install** - Jekyll installs nicely as a gem.  Once installed, you can launch a Jekyll server on your local machine to quickly view the site before publishing.

* **Quick Publishing** - You publish to your site by committing to the associated repository.  I literally cannot think of an easier way to publish a webpage.

There are, however, a few challenges as well:

* **Barriers to Entry** - I didn\'t find much in the way of ready to use themes or designs.  I\'m hand rolling the entire site.  If you have experience with HTML and CSS, then this shouldn\'t be much of an issue.  As a new blogger I\'ve had to learn the basics quickly.  Thankfully, there is a lot of sample code linked through Jekyll\'s site.  Also, this site is being coded with vim, so I am still teaching myself text editing functions of the tool.

* **Code** - The whole point of this was to provide high quality &lt;code> blocks and not have to learn a new language.  While you *can* use standard Markdown formatting for code, you\'re going to want to use [Pygments](http://pygments.org). My limited experience with it shows that it can do everything I\'m looking for and all without coding it myself.

* **Liquid** - Yet another templating language I\'m going to have to learn. C\'est la vie.  I\'m still not 100% certain how to leverage it, but that will get figured out soon enough.

## 25 To Go

This represents my first entry in a year of articles.  Most of the rest will, hopefully, be more robust, but my goal for this year is to publish 26 articles on technical subjects.  One about every two weeks.  Thanks for reading the first one and I hope you\'ll come back for more soon.
