---
layout: gs-jekyll-core/robots
permalink: /robots.txt
---

Allow: {{ 'assets/favicon/' | relative_url }}
Allow: {{ 'assets/bojekylls/images/' | relative_url }}

Sitemap: {{ 'sitemap.xml' | absolute_url }}