$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/articles/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-articles"
  s.version     = Spina::Articles::VERSION
  s.authors     = ["Dan Mitchell"]
  s.email       = ["dan@digitalreflow.co.uk"]
  s.homepage    = "http://www.digitalreflow.com"
  s.summary     = "News/Blog plugin for Spina"
  s.description = "Plugin for Spina CMS to include a news or blog on your website"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'spina', '~> 0.11', '>= 0.11.1'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'rspec-rails', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'factory_bot_rails', '~> 4.0'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1'
  s.add_development_dependency 'pry-rails', '~> 0'
  s.add_development_dependency 'capybara-webkit'
  s.add_development_dependency 'launchy'
end
