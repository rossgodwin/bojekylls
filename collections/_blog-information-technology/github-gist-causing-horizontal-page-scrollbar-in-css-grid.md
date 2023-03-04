---
layout: theme-site/blog/post
author-id: 1
title: Github Gist Causing Horizontal Page Scrollbar in CSS Grid
include-seo: true
image-path: assets/this-site/images/blog/posts/github-gist-causing-horizontal-page-scrollbar-in-css-grid/banner.png
image-by-name: Rubaitul Azad
image-credit-url: https://unsplash.com/@rubaitulazad
categories: [information-technology]
tags: [information technology, web design, css, css grid, github, gist]
date: 2020-09-12
include-highlightjs: yes
---

I was running in to a issue on my website where Github gist embedded code shares were causing horizontal page/viewport scrollbars on small devices like a mobile phone.
<!--more-->
I have another website that I built where I included Github gist code snippets, so I checked how those looked on small screen sizes and there was no issue.

Since this is the first website where I used CSS Grid, I immediately suspected there was some incompatibility between the gist and CSS Grid. I did some testing and in fact discovered that a gist in a CSS grid block would not scale down properly on smaller screen sizes when the content in the gist was wider than the viewport. After doing some research I stumbled upon a article by [CSS-Tricks.com](https://css-tricks.com/preventing-a-grid-blowout){:target="_blank"} discussing grid blowouts. To be clear, the issue does not have to do so much with the size of the device, rather the width of the content in the gist relative to the viewport size. If the content in the gist stretches beyond the viewport width the horizontal page scrolling occurs.

Below are a couple of examples of embedded gists. On a larger screen size they look no different, but go ahead and minimize the browser window and scaled down the width of the browser window as far as you can or view this on a mobile device. Notice how a horizontal scrollbar appears on the page and the first gist's width overflows the viewport width where as the second gist stays within the boundary of the viewport and has a horizontal scrollbar within it's element. The second gist is functioning correctly or how I preferred gists to render on my website.

### Horizontal Page Scrolling

The below snippet of HTML code recreates the issue.

{% capture _html %}
<div style="display: grid;">
	// gist code embed here
</div>
{% endcapture %}
{% include theme-core/components/html-source-code-block.html html=_html %}

<div style="display: grid;">
	{% gist 2b51dd400db9a8bbf881324a80b91aca %}
</div>

### No Horizontal Scrolling

Again, resize your browser window down or view on a mobile device to see how the gist code block below scales to the viewport width and the horizontal scrolling occurs within the gist block itself. To eliminate the horizontal page/viewport scrolling, add the following property to the element being defined as a grid, ```grid-template-columns: minmax(0, 1fr);```. I won't rehash what the [CSS-Tricks.com](https://css-tricks.com/preventing-a-grid-blowout){:target="_blank"} article explains well about this fix but I'll add that you would need to add the column template minmax property to any nested elements defined as a grid.

{% capture _html %}
<div style="display: grid; grid-template-columns: minmax(0, 1fr);">
	// gist code embed here
</div>
{% endcapture %}
{% include theme-core/components/html-source-code-block.html html=_html %}

<div style="display: grid; grid-template-columns: minmax(0, 1fr);">
	{% gist 2b51dd400db9a8bbf881324a80b91aca %}
</div>