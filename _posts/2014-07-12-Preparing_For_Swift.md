---
layout: socialpost
title: Preparing For Swift
excerpt: Yosemite and Swift set up has caused me a spot of trouble getting.  Here are a solutions of a couple of minor problems.
date: 2014-07-12 17:30:00 -0400
hashtag: preparedforswift
twitteruser: dfansteel
---

Ruby 2.0
--------

I\'ve tried several times in the past month to write a post with minimal success.
Specifically, the moment I tried to test a post, jekyll refused to build:

![/Library/Ruby/Site/2.0.0/rubygems/ext/builder.rb:212:in `initialize': Permission denied - /Library/Ruby/Gems/2.0.0/extensions/universal-darwin-14/2.0.0/eventmachine-1.0.3/gem_make.out (Errno::EACCES)]({{site.url}}/images/ruby_builder_permission_denied.png){: .fullscreenshot}

After spending several weekends scouring the web with no luck I did finally get turned on to confirming the gem enviornment.

![gem env]({{site.url}}/images/gem_env.png){: .fullscreenshot}

I can\'t say exactly what suggested to me that updating gem would correct the situation.
As I had no better idea at this point, I decided to give it a try.

![gem update --system]({{site.url}}/images/gem_update_system.png){: .fullscreenshot}

When I again tried to run jekyll I was pleasantly surprised to see that it did work.

![Running jekyll succeeds.]({{site.url}}/images/ruby_success.png){: .fullscreenshot}

There were a few gems that needed to be updated, but following the gem system update, Ruby began running without incident.

Swift REPL
----------

Even though the Swift REPL was shown off at WWDC, setting it up was non-obvious.
It turns out that it\'s a simple matter of selecting one of your Xcode6 beta versions activates the REPL.

```
%> sudo xcode-select -s /Applications/Xcode6-Beta3.app/Contents/Developer/
```

And you\'re off and running.

![sudo xcode-select -s /Applications/Xcode6-Beta3.app/Contents/Developer/]({{site.url}}/images/swift_repl.png)
