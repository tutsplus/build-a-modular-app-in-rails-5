$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "news/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "news_core"
  s.version     = News::Core::VERSION
  s.authors     = ["Markus Mühlberger"]
  s.email       = ["markus@mmuehlberger.com"]
  s.summary     = "Summary of Core."
  s.description = "Description of Core."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"

  s.add_dependency "sass-rails"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "devise"
  s.add_dependency "cancancan"
end
