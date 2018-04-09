require "spina"

module Spina
  module Articles
    class Engine < ::Rails::Engine
      config.before_initialize do
        ::Spina::Plugin.register do |plugin|
          plugin.name = 'articles'
          plugin.namespace = 'articles'
        end
      end

      config.generators do |g|
        g.test_framework :rspec, fixture: false
        g.fixture_replacement :factory_bot, dir: 'spec/factories'
        g.assets false
        g.helper false
      end
    end
  end
end
