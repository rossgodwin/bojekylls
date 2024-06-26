---
layout: bojekylls/header-body-footer/post/default
author-alias: jdoe
title: Post with Photo Gallery
include-seo: true
primary-image-relative-url: assets/images/blog/post-with-photo-gallery/banner.png
primary-image-author-name: Amanda Sowers
primary-image-author-url: https://pixabay.com/users/amandasowers-1974449/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1597095
categories: [demo]
tags: [jekyll, demo, photo gallery]
date: 2023-03-04
thumbnail-gallery-width: 425px
galleries:
  - id: thumbnail-demo1
    type: thumbnails
    images:
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/thumbnail-sample1-th.jpg
        url: assets/images/blog/post-with-photo-gallery/thumbnail-sample1.jpg
        alt: "Blue Sky"
        html_content: "This is a blue sky with clouds."
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/thumbnail-sample10-th.jpg
        url: assets/images/blog/post-with-photo-gallery/thumbnail-sample10.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/thumbnail-sample11-th.jpg
        url: assets/images/blog/post-with-photo-gallery/thumbnail-sample11.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/thumbnail-sample12-th.jpg
        url: assets/images/blog/post-with-photo-gallery/thumbnail-sample12.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/thumbnail-sample2-th.jpg
        url: assets/images/blog/post-with-photo-gallery/thumbnail-sample2.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/thumbnail-sample4-th.jpg
        url: assets/images/blog/post-with-photo-gallery/thumbnail-sample4.jpg
  - id: dynamic-demo
    type: dynamic
    images:
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample1-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample1.jpg
        html_content: "Help! I can&#39;t see where I&#39;m going!"
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample2-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample2-th.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample3-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample3-th.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample4-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample4-th.jpg
  - id: thumbnail-demo2
    type: thumbnails
    images:
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample1-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample1.jpg
        html_content: "Help! I can&#39;t see where I&#39;m going!"
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample2-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample2-th.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample3-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample3-th.jpg
      - thumbnail_url: assets/images/blog/post-with-photo-gallery/dynamic-sample4-th.jpg
        url: assets/images/blog/post-with-photo-gallery/dynamic-sample4-th.jpg
---

Often times, you need to add a write up that include photos. Here's a demonstration of how to add a post with a photo gallery.
<!--more-->

To do this you will need to add the photo and corresponding thumbnail urls under the 'galleries' variable in the front matter. This page layout has a predefined space where photo thumbnails are displayed in the upper left corner of the post body. It's also possible to add a button that launches a photo gallery as well as add the thumbnail gallery to another place in the blog, other than the predefined upper left corner.

<a class="gs-bjk-button gs-bjk-button-solid-blue" href="#" id="dynamic-demo">Launch Gallery</a>

{% assign gallery = page.galleries[2] %}
<section class="gs-bjk-panel-gray gs-bjk-post-thumbnails-panel" style="width: 425px">
	{% include gs-jekyll-core/components/gallery/thumbnails.html gallery=gallery %}
</section>
