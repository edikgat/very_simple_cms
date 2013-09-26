require "very_simple_cms/engine"
require "yaml_record_rails_4"

module VerySimpleCms
  mattr_accessor :editor_path
  mattr_accessor :translatable
  mattr_accessor :source_file_name
  mattr_accessor :source_files_root
end
