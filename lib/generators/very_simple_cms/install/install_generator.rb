module VerySimpleCms
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    # class_option :with_mercury, default: false
    def create_initializer_file
      copy_file "very_simple_cms.rb", "config/initializers/very_simple_cms.rb"
    end

    def create_directory
      empty_directory 'config/cms'
    end

  end
end