module VerySimpleCms
  class HtmlBlock < YamlRecord::Base
    include SharedHelper
    properties :title, :body, :dynamic_source, :updated_at
    adapter :local
    source Rails.root.join(VerySimpleCms.source_files_root)
    source_file_name VerySimpleCms.source_file_name
    before_create :set_dynamic_source
    before_save :set_updated_at

    def to_s
        {title: title, body: body,  dynamic_source: dynamic_source, updated_at: updated_at}.to_s
    end

    private
    def set_dynamic_source
        if dynamic_source.blank?
            self.dynamic_source = dynamic_save_source
        end
    end

    def set_updated_at
        self.updated_at = Time.zone.now.to_s :bd
    end
  end
end