---
layout: post
title: Document Better - Part 1
date: 2014-01-18 17:30:00 -0500
---
Documentation is one of those things that every developer knows they should do,
but few of us actually find the time for. Beginning with XCode 5, however,
documentation is now in the developer\'s own best interest. Since XCode 5 supports
the display of third party documentation within XCode\'s Quick Help pane.

appledoc
--------

appledoc is a [Markdown](http://daringfireball.net/projects/markdown/syntax#link "Markdown Syntax")
based documentation generation program designed to look like Apple\'s own
documentation. Though very complete, it is still in active development. I\'ve
found the developer community to be very responsive, with many tips available
through their github [issues](https://github.com/tomaz/appledoc/issues?state=open "appledoc Issues") page.

This use guide has been constructed based on comments in the issues page, use
of appledoc in production, and an examination of the [source code](https://github.com/tomaz/appledoc "appledoc on Github").

Installing
----------

The full install instructions can be found on [appledoc\'s github](https://github.com/tomaz/appledoc "appledoc on Github")
page. They\'re very simple and boil down to the following steps:

1. Clone the repository - `git clone git://github.com/tomaz/appledoc.git`

2. Navigate to the location of your cloned local repository.

3. Run the installation script - `sudo sh install-appledoc.sh`

That\'s it, you\'re done.

Alternatively you can install via Homebrew - `brew install appledoc`

Comment Blocks
--------------

AppleDoc supports three types of comment blocks.

* `/*!`

* `///`

* `/**`

I find `/*!` to be preferable as it is supported by other popular documentation
system, including XCode 5\'s Quick Help documentation. Naturally, these comment
block still end in `*/`.

The line formatting within comment blocks supply context to the final
documentation. The first line is accepted as the "abstract" for the
documentation element. Supply a blank line and then further documentation that
will become the "discussion" section of the documentation.

{% highlight objective-c %}
/*! There's one space and between the exclamation point and the start of this sentence.

There's one blank line between the first line and this line. All the text that appears from this point on will also appear in the discussion block. So long as you don't add a blank line, the text will be
interpreted as a single paragraph. Even if you have an exteremly long line
and a short
one.

Then add a blank line and you'll start producing a new paragraph.
*/
{% endhighlight %}

Tokens
------

Most common elements of a program are supported as tokens that can be documented in appledoc.

* **Classes** -

* **Categories** -

* **Protocols** -

* **Methods** -

* **Properties** -

* **Enums** -

Keywords
--------

* `abstract` or `brief` -

* `discussion` or `details` -

* `note` -

* `warning` -

* `bug` -

* `deprecated` -

* `param` -

* `return`, `returns`, or `result` -

* `exception` -

* `see` or `sa` -

* `since` or `available` -
 
Method Groups
-------------

@"(?m:^\s<em>\Sname\s+(.</em>))" - what is this

Programming Guides
------------------

AppleDoc comments are based on <a href="http://daringfireball.net/projects/markdown/syntax#link" title="Markdown Syntax">Markdown</a>, an easy-to-learn, easy-to-read, and easy-to-write markup language.</p>

Flags
-----
