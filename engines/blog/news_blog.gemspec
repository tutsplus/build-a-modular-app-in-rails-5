$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "news/blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "news_blog"
  s.version     = News::Blog::VERSION
  s.authors     = ["Markus Mühlberger"]
  s.email       = ["markus@mmuehlberger.com"]
  s.summary     = "Summary of Blog."
  s.description = "Description of Blog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"

  s.add_dependency "news_core"
  s.add_dependency "deface"
end
