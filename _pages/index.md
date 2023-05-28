---
layout: theme-site/hbf-page/page
permalink: /
include-seo: false
sitemap: false
masonry-grids: true
---

<div class="gs-background-color-gray98">
	{% capture _splash-header-content %}
		<section class="jkt-layout-reel gs-margin-align-horizontal-center gs-grid-align-vertical-center" style="height: 400px;">
			<div data-aos="fade-up">
				<h1 class="gs-color-white" style="font-size: 90px;">Bojekylls</h1>
				<h7 class="gs-color-white" style="font-size: 25px; text-decoration: underline;">A Jekyll Theme</h7>
				<br>
				<a class="jkt-button jkt-button-solid-green gs-margin-top-20 gs-margin-right-20" href="/docs/quick-start-guide">Learn More</a>
				<a class="jkt-button jkt-button-solid-green gs-margin-top-20 gs-margin-right-20" href="/docs/quick-start-guide">View Github Source</a>
			</div>
		</section>
	{% endcapture %}
	
	{% include theme-site/layout/splash-header.html
		background-image-relative-url="assets/this-site/images/belltower.jpg"
		content=_splash-header-content %}
	
	<section class="gs-margin-top-20 gs-margin-bottom-20 jkt-layout-reel gs-margin-align-horizontal-center">
		<div class="gs-grid-3c">
			<div>
				<div class="gs-background-color-white jkt-background-pattern-dotted-gray jkt-border-rounded-20 jkt-border-color-gray84 jkt-border-box-shadow-gray84 gs-padding-20 gs-text-align-horizontal-center" data-aos="fade-right">
					<img src="{{ '/assets/this-site/images/info.png' | relative_url}}" style="width: 97px; height: 97px;" />
					<h3>About</h3>
					<p>Bojekylls is a Jekyll theme that can be used to quickly create a static website.</p>
					<a class="jkt-button jkt-button-outline-blue" href="{{ '/about' | relative_url}}">Learn More</a>
				</div>
			</div>
			<div>
				<div class="gs-background-color-white jkt-background-pattern-dotted-gray jkt-border-rounded-20 jkt-border-color-gray84 jkt-border-box-shadow-gray84 gs-padding-20 gs-text-align-horizontal-center" data-aos="fade-up">
					<img src="{{ '/assets/this-site/images/info.png' | relative_url}}" style="width: 97px; height: 97px;" />
					<h3>Documentation</h3>
					<p>This theme is thoroughly documentation and helps walk you through the several features and how you can customize it for your need.</p>
					<a class="jkt-button jkt-button-outline-blue" href="{{ '/docs/quick-start-guide' | relative_url}}">Learn More</a>
				</div>
			</div>
			<div>
				<div class="gs-background-color-white jkt-background-pattern-dotted-gray jkt-border-rounded-20 jkt-border-color-gray84 jkt-border-box-shadow-gray84 gs-padding-20 gs-text-align-horizontal-center" data-aos="fade-left">
					<img src="{{ '/assets/this-site/images/info.png' | relative_url}}" style="width: 97px; height: 97px;" />
					<h3>Uses</h3>
					<p>Bojekylls is a Jekyll theme that can be used to quickly create a static website.</p>
					<a class="jkt-button jkt-button-outline-blue" href="/about">Learn More</a>
				</div>
			</div>
		</div>
	</section>
</div>