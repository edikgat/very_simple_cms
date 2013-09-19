require "very_simple_cms/engine"

module VerySimpleCms
  mattr_accessor :editor_path
  mattr_accessor :translatable
  mattr_accessor :content_saving_adapter
  mattr_accessor :source_file_name
  mattr_accessor :source_files_root
end
