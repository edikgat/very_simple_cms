module VerySimpleCms
  class HtmlBlock < YamlRecord::Base
    # Declare your properties
    properties :title, :body, :dynamic_source

    # Declare your adapter (local by default)
    # adapter :local # or :redis
    adapter VerySimpleCms.content_saving_adapter.to_sym

    # Declare source file path
    source Rails.root.join(VerySimpleCms.source_files_root)
    source_file_name VerySimpleCms.source_file_name

    def to_s
        {title: title, body: body,  dynamic_source: dynamic_source}.to_s
    end
  end
end