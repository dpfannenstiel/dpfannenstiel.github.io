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

The next step is to actually generate rich documentation for third parties to use.
While HeaderDoc and DOxygen have been around for a while, having grown up within
the Apple ecosystem, the styling leads something to be desired.  From a practical
standpoint, having to learn new documentation schema can result in additional costs
to learn and become proficient with.

appledoc
--------

appledoc is a [Markdown](http://daringfireball.net/projects/markdown/syntax#link "Markdown Syntax")
based documentation generation program designed to look like Apple\'s own
documentation. Though very complete, it is still in active development. I\'ve
found the developer community to be very responsive, with many tips available
through their github [issues](https://github.com/tomaz/appledoc/issues?state=open "appledoc Issues") page.

At the conclusion of a successful appledoc run a docset is generated.  Docsets are the standard format that
existing Apple Documentation stored.  Once a docset is generated, you may access your
custom documentation through the docset viewer of your choice.  XCode\'s documentation viewer
is available, but recently I have also become a fan of [Dash](https://itunes.apple.com/us/app/dash-docs-snippets/id458034879?mt=12),
available on the Mac App Store for free, but in app purchase is availabe for - something, I forget. But, it is worth it.

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

Comment blocks are the source of all comments and notations for appledoc.
When a token is preceeded by a valid comment block that token is included
in the resulting documentation with the provided comments.

appledoc supports three types of comment blocks:

* `/*!`

* `///`

* `/**`

I find `/*!` to be preferable as it is supported by other popular documentation
system, including XCode 5\'s Quick Help documentation. Naturally, these comment
block still end in `*/`.

The line formatting within comment blocks supply context to the final
documentation. The first line is accepted as the \"abstract\" for the
documentation element. Supply a blank line and then further documentation that
will become the \"discussion\" section of the documentation.

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
In some cases these element will generate whole, individual documents.  In others, the token
will be documented within another document.  Still other tokens determine their inclusion status
based on settings provided to appldoc.

* **Classes** - Are commented prior to the `@interface` declaration. These tokens will result
in individual documents.

* **Categories** - Are commented prior to the `@interface` declaration. These tokens may result
in individual documents or may be included based on appledoc settings. The default setting is
to document each category individually.

* **Protocols** - Are commented prior the the `@protocol` declaration. These tokens will result
in individual documents.

* **Methods** - Are commented prior to the method signature.  These tokens will be included
with the documentation for the Class, Category, or Protocol they are associated with.

* **Properties** - Are commented prior to the `@property` declaration. These tokens will be
included with the documentation for the Class, Category, or Protocol they are associated with.

* **Enums** - Enums are a special case in appledoc.  appledoc does not work with standard C
enums.  Instead the author of code must use `NS_ENUM` to for enumeration.  So long as NS_ENUM
is used, these tokens will result in indivudual documents.

As of appledoc 2.2 the typedefing of blocks does not get documented automatically, but more
on that later.

Keywords
--------

Keywords are the formatters that are used within comment blocks to layout the documentation
for the commented token.  `abstract` and `discussion` support implicit formatting based
on their location within the comment block.  Other keywords must pre prefixed with an \"@\" to
be used.

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
Before you actually run your first appledoc build I recommend updating your .gitignore file,
if you are using git for SCM.  You\'ll want to add `AppleDoc` to your list of ignored folders.
The standard run of appledoc includes this path as a location for the output files of the
appledoc run.

Sample Code
-----------
For your review I have posted a [sample project](https://github.com/dpfannenstiel/RandomUserAPI/releases/tag/v1) using appledoc to github.

Next Steps
----------
Check back in about two weeks for part two of the appledoc use guide when I\'ll cover method groups, advanced scripting flags, and programming guides. 
