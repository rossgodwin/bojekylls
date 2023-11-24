---
layout: bojekylls/header-body-footer/post/default
author-alias: jdoe
title: Add a Styled Blockquote
include-seo: true
primary-image-relative-url: assets/images/blog/add-styled-blockquote/banner.jpg
categories: [demo]
tags: [jekyll, theme-example-feature]
date: 2018-01-03
syntax-highlighter-on: yes
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
{% include bojekylls/components/quote.html quote=_quote quote_by='Kelly Clarkson' %}


1) Add 'syntax-highlighter-on: true' in the page frontmatter
{% capture _code %}---
syntax-highlighter-on: yes
---{% endcapture %}
{% include bojekylls/components/syntax-highlighter.html code-class='language-markup' code=_code %}