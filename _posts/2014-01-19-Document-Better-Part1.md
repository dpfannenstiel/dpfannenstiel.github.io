---
layout: post
title: Document Better - Part 1
excerpt: appledoc in an invaluable resource for teams needing to produce high quality, Apple like documentation for their Mac and iOS products.  This post covers setup and basic use of appledoc.
date: 2014-01-19 17:30:00 -0500
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

* `abstract` or `brief` - The abstract is a short description of the token being documented.
The abstract may be implicitly defined by adding text to the first line of a document comment.

* `discussion` or `details` - This is a longer description of the token being documented.
Often deeper technical issues that matter to the consumer of the token will be discussed here.
If the length of these deeper details gets too long, consider the addition of a programming guide.
The details may be implicitly defiend by adding a blank line after the abstract of a documentation
block.  All text that follows the abstract will be interpreted as details until another keyword
is explicitly added.

* `note` - Notes are units of text that will be formatted within a rectangle so that additional
emphasis may be prescribed and the text will be identifiable to the consumer.

* `warning` - Similar to a note, but intented to provide a piece of critical information to the consumer.

* `bug` - Styled similarly to a warning and a note, but intended to alert the consumer of a known bug.

* `deprecated` - Alert the consumer that this method is deprecated and should no longer be used.

* `param` - Much like JavaDoc, param is used to document a parameter.  It takes the
format: 
> `@param <The Param Name> <Describe the Param>`.

* `return`, `returns`, or `result` - Describe the return value of the method.

* `exception` - Alert the user to an excpetion that may be thrown from the method. Like the param
it takes the format:
> `@exception <Exception Name> <Describe the exception>`.

* `see` or `sa` - Inform the consumer to see another element.  Under standard settings appledoc will
also provide a link to the other element.

* `since` or `available` - Inform the user to the initial availability of the documented token.

Your First Documentation
------------------------
Before you actually run your first

Sample Code
-----------
For your review I have posted a sample project using appledoc to github.

Next Steps
----------
Check back in about two weeks for part two of the appledoc use guide when I'll cover method groups, advanced scripting flags, and programming guides. 
