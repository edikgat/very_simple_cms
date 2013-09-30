require_dependency "very_simple_cms/application_controller"

module VerySimpleCms
  class ContentsController < ApplicationController
    def update
      data = params['content']

      data.each do |key, value|
        static_text = HtmlBlock.find_by_attribute(dynamic_save_source, :title, key)
        if static_text.present?
          static_text.update_attributes(body: value['value'])
        else
          static_text = HtmlBlock.new(
            dynamic_source: dynamic_save_source,
            title: key, 
            body: value['value']
          )
          static_text.save
        end
        Rails.cache.write(cache_name_string(key), (static_text.try(:body).html_safe))
      end
      render text: ""
    end
  end
end
