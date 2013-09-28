module SelectiveFeatures
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path("../../templates", __FILE__)

      def create_model_file
        migration_template "add_selective_features.rb", "db/migrate/add_selective_features.rb"
      end

    end
  end
end

