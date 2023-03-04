# frozen_string_literal: true

# https://jekyllrb.com/docs/themes/

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-bojekylls"
  spec.version       = "1.0"
  spec.authors       = ["Ross Godwin"]
  spec.email         = ["tm.anonymous.1@gmail.com"]
  
  spec.summary = "LOOK: Write a short summary, because RubyGems requires one."
  spec.description = "LOOK: Write a longer description or delete this line."
  # spec.homepage = "LOOK: Put your gem's website or public repo URL here."
  
  # spec.metadata["homepage_uri"] = "TODO: Put your gem's homepage here."
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  
  spec.files = Dir['_includes/**/*', 'README.md']
  
  spec.add_runtime_dependency "jekyll", "~> 4.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-paginate-v2", "~> 3.0"
  #spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
  #spec.add_runtime_dependency "kramdown", "~> 2.3.0"
  
  spec.add_development_dependency "bundler", "~> 2.4.3"
end