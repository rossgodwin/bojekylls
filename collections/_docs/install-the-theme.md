---
title: Install the Theme
---

## Install via Gem

### Obtain the GemFile

Currently the GemFile is not on rubygems.org, so the GemFile will need to be downloaded.

Download the latest GemFile ```jekyll-theme-bojekylls-x.x.gem```

or

Fork the ```Bojekylls``` repository and build the GemFile using the GemSpec.

```
gem build jekyll-theme-bojekylls
```

### Install the GemFile

Once the GemFile has been obtained and in a local folder...

1. Add the following to your GemFile:

```
gem "jekyll-theme-bojekylls", ">= 1.0", path: "/mnt/d/dev/eclipse-workspace/jekyll-themes/bojekylls"
```

2. Reference the theme in your project's ```_config.yml```

```
theme: jekyll-theme-bojekylls
```