require "spec_helper"

ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb", __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../dummy/db/migrate", __FILE__)]
abort("DATABASE_URL environment variable is set") if ENV["DATABASE_URL"]

require "rspec/rails"
require "pry-rails"

Dir[File.expand_path('../../spec/support/**/*.rb', __FILE__)].each { |f| require f }

module Features
  include FeatureHelpers
end

load "dummy/db/schema.rb"
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include Features, type: :feature
  config.filter_rails_from_backtrace!
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
end
