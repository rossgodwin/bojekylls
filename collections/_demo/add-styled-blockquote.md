---
layout: theme-site/blog/post
author-id: 1
title: Add a Styled Blockquote
include-seo: true
image-path: assets/this-site/images/blog/posts/apache-forward-requests-conditionally-to-wildfly/banner.jpg
categories: [demo]
tags: [jekyll, theme-example-feature]
date: 2018-01-03
include-highlightjs: yes
---

Here is a example of how to add a block quote.
<!--more-->

{% capture _quote %}
	What doesn't kill you makes you stronger
	Stand a little taller
	Doesn't mean I'm lonely when I'm alone
	What doesn't kill you makes a fighter
	Footsteps even lighter
	Doesn't mean I'm over 'cause you're gone
{% endcapture %}
{% include theme-core/components/quote.html quote=_quote quote_by='Kelly Clarkson' %}


1) Add 'include-highlightjs: yes' in the page frontmatter
{% capture _html %}
	include-highlightjs: yes
{% endcapture %}
{% include theme-core/components/html-source-code-block.html html=_html %}