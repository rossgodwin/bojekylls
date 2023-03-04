---
layout: theme-site/blog/post
author-id: 1
title: How I Made This Website
include-seo: true
categories: [information-technology]
tags: [information technology, web design, static website, css, css grid, css flexbox, jekyll, github pages, my website]
date: 2022-12-18
---

This website is a static site that I created using HTML, CSS, Jekyll, Javascript and other 3rd party libraries.
<!--more-->
The following is true of this website as of the publish date of this post. A static website is a site that serves the content exactly as it is stored on the server, in contrast to a dynamic website that generates the content as it is requested by the user's web browser. For this reason, static site pages should load very fast. Static websites are easy and fun to create, inexpensive to host and and perfect to use for a personal website. The purpose of this website is to contain blog postings, information about my career and a avenue for me to improve my web design skills. As I was initially thinking about this site, I wanted to put it together without using [Bootstrap](https://getbootstrap.com){:target="_blank"}. The reason being I wanted to create my own library of components and I wanted to use this as a opportunity to get better at using raw HTML and CSS.

I used [Jekyll](https://jekyllrb.com){:target="_blank"} for my static site generator. A static site generator is a tool that creates all the website content based on raw data and templates. [Cloudflare](https://www.cloudflare.com/learning/performance/static-site-generator){:target="_blank"} has a nice article explaining static websites, static site generators and the pros and cons.

The user interface is a responsive UI, so all the content is designed to render on any possible screen size. To achieve this I used [CSS Flexbox (Flexible Box) Layout](https://css-tricks.com/snippets/css/a-guide-to-flexbox){:target="_blank"}, [CSS Grid Layout](https://css-tricks.com/snippets/css/complete-guide-grid){:target="_blank"} and a very nice 3rd party library [Masonry Grid Layout](https://masonry.desandro.com){:target="_blank"} framework. Also, breakpoints are used as triggering points to reorganize the content on the screen. Breakpoint widths I used are 576px, 768px, 992px, 1200px and 1400px.

Depending on what you want your visibility to be in the public domain, search engine optimization (SEO) may be a critical part to a website. On this website, I'm able to control SEO at the site level, resource path level and individual page level. At the site and resource path level, I can control whether SEO metadata is displayed on a page in the Jekyll *_config.yml* file or I can determine if a specific page adds SEO metadata in the page's Front Matter block. The actual SEO metadata at the site level is contained in a YAML file in Jekyll's *_data* folder and for a specific page resource in Front Matter block.

All my CSS is designed and generated using SASS. This framework has a lot of nice features, but I really like the ability this provides to compartmentalize all my styling across several files. To keep all the SCSS files organized and grouped in a meaningful way, I use the [7-1 pattern](https://sass-guidelin.es/#architecture){:target="_blank"} for the CSS architecture.

Another important part of a website is the ability to render photos. I used two very nice frameworks for photo rendering: [lightGallery](https://www.lightgalleryjs.com){:target="_blank"} and [Justified Gallery](https://miromannino.github.io/Justified-Gallery){:target="_blank"}. I used Justified Gallery for displaying the gallery thumbnails and lightGallery for photo viewing and navigating through the gallery. To see these in action, check out my blog post on a [small office network]({{ 'blog/information-technology/small-office-network-update' | relative_url }}).

As I mentioned earlier in this post, hosting a static site is inexpensive. At a bare minimum, the only necessary cost you incur is the domain name. For my site, I utilize GitHub pages to serve my static pages and I acquired my domain name through Namecheap, which has a simple, intuitive user interface for configuring a DNS.

The logo was generated using [fontspace.com](https://www.fontspace.com){:target="_blank"}. The font used is called *Great Day* by Billy Argel Fonts and was found under the retro category of fonts.

One other thing I will mention about this website is the page source that is served out is compressed HTML. If you view the page source in your web browser, you'll see that the HTML is on one line. This optimization improves page loading times and limits bandwidth usage. Compression is done without a plugin using a micro [Liquid library](http://jch.penibelst.de){:target="_blank"} created by Anatol Broder.

I hope this article provides a little understandable insite into to my website and perhaps may help you in your web design. If you have any questions, feel free to reach out to me through LinkedIn.