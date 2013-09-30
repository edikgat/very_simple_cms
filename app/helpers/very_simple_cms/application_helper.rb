module VerySimpleCms
  module ApplicationHelper
    def cache_name_string(title, save_source = nil )
      save_source ||= dynamic_save_source
      "verysimplecms::htmlblocks/#{save_source}/#{title}"
    end
  end
end
