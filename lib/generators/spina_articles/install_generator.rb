require 'rails/generators/active_record'

module SpinaArticles
  module Generators
    class InstallGenerator < ActiveRecord::Generators::Base

      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(path)
        ActiveRecord::Generators::Base.next_migration_number(path)
      end

      def copy_migration_file
        migration_template "create_spina_articles_table.rb", Rails.root.join("db/migrate/create_spina_articles_table.rb"), migration_version: migration_version
        migration_template "add_photo_id_to_spina_articles.rb", Rails.root.join("db/migrate/add_photo_id_to_spina_articles.rb"), migration_version: migration_version
      end

      def migration_version
        if rails5?
          "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
        end
      end

      def rails5?
        Rails.version.start_with? '5'
      end
    end
  end
end