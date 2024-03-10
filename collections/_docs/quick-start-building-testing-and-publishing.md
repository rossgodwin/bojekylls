---
title: Building, Testing and Publishing
---

## {{ page.title }}

##### Local Testing

Create a development configuration file that overwrites properties in the ```_config.yml``` file i.e. like your Google Analytics id. For example:

```
destination: _site
url: 'http://127.0.0.1:4000'
baseurl: ''

# Analytics
google_analytics_measurement_id: ''

sass:
  style: :expanded
```

Use bundler to launch Jekyll and include the development configuration file (```_config.dev.yml```) for local testing.

```
$ bundle exec jekyll serve --config _config.yml,_config.dev.yml
```

**Jekyllrb.com Help:**
<br/>[Command Line Usage](https://jekyllrb.com/docs/usage){:target="_blank"}
<br/>[Building Command Options](https://jekyllrb.com/docs/configuration/options/#build-command-options){:target="_blank"}
{: .gs-background-color-palegreen2 .gs-border-color-palegreen2 .gs-border-rounded-10 .gs-padding-10 .gs-color-white .gs-link-text-white}

##### Building for Production/Publication

Once ready to build the site for publishing, the following command will place in the folder designated by the ```destination``` property in ```_config.yml```.

```
$ JEKYLL_ENV=production bundle exec jekyll build
```

##### Building the Gemfile

If applying this theme to your site using the Gemfile and you want to modify the theme after forking the project in Github. The following command uses the ```jekyll-theme-bojekylls.gemspec``` to build the Gemfile.

```
gem build jekyll-theme-bojekylls
```

##### Other Command Line Variations

```
$ JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config.dev.yml
```

```
$ JEKYLL_ENV=production bundle exec jekyll serve --config _config.yml,_config.dev.yml
```