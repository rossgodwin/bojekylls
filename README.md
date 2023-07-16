
## Local Testing
$ bundle exec jekyll serve --config _config.yml,_config.dev.yml

$ JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config.dev.yml

$ JEKYLL_ENV=production bundle exec jekyll serve --config _config.yml,_config.dev.yml

## Production environment
$ JEKYLL_ENV=production bundle exec jekyll build


gem build jekyll-theme-bojekylls