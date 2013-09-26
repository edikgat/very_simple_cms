module VerySimpleCms
  class HtmlBlock < YamlRecord::Base
    include SharedHelper
    properties :title, :body, :dynamic_source
    adapter :local
    source Rails.root.join(VerySimpleCms.source_files_root)
    source_file_name VerySimpleCms.source_file_name
    before_create :set_dynamic_source

    def to_s
        {title: title, body: body,  dynamic_source: dynamic_source}.to_s
    end

    private
    def set_dynamic_source
        if dynamic_source.blank?
            self.dynamic_source = dynamic_save_source
        end
    end
  end
end