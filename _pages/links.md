---
layout: bojekylls/default
permalink: /links/
title: "Onlylinks Example"
logo-relative-url: /
logo-image-relative-url: assets/images/site/logo.png
subtitle: Jekyll theme that can be used to quickly create a static website.
links:
  - title: About
    internal-relative-url: docs/about
    fontawesome-icon-classnames: fa fa-info fa-2x
  - title: Quick-Start-Guide
    internal-relative-url: docs/quick-start-guide
    fontawesome-icon-classnames: fa fa-file fa-2x
  - title: LinkedIn
    external-url: https://www.linkedin.com/company/linkedin
    fontawesome-icon-classnames: fab fa-linkedin-in fa-2x
  - title: Github
    external-url: https://github.com/github
    fontawesome-icon-classnames: fab fa-github fa-2x
---

{% include bojekylls/pages/onlylinks.html
	logo-relative-url=page.logo-relative-url
	logo-image-relative-url=page.logo-image-relative-url
	title=page.title
	subtitle=page.subtitle
	links=page.links %}