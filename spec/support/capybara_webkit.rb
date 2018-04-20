Capybara.javascript_driver = :webkit
Capybara.server = :webrick

Capybara::Webkit.configure do |config|
  config.block_unknown_urls
end
