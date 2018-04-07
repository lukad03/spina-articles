ENV["RACK_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb", __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../dummy/db/migrate", __FILE__)]
abort("DATABASE_URL environment variable is set") if ENV["DATABASE_URL"]

require "rspec/rails"

Dir[File.expand_path('../../spec/support/**/*.rb', __FILE__)].each { |f| require f }

module Features
  # Extend this module in spec/support/features/*.rb
end

RSpec.configure do |config|
  config.include Features, type: :feature
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
end

ActiveRecord::Migration.maintain_test_schema!
