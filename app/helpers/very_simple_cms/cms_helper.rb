module VerySimpleCms
  module CmsHelper
    def cms_block(title)
      Rails.cache.fetch(cache_name_string(title)) do
        block = HtmlBlock.find_by_attribute(dynamic_save_source, :title, title)
        raw(block.try(:body))
      end
    end

    def cms_edit_link(advanced_class=nil)
      link_to t(:edit_link, scope: [:very_simple_cms]), VerySimpleCms.editor_path + request.path, 
        class: "admin_edit_link #{advanced_class}", data: { save_url: very_simple_cms.content_url }
    end  
  end
end
