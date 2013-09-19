module VerySimpleCms
  module SharedHelper
    def dynamic_save_source
      if VerySimpleCms.translatable
        I18n.locale.to_s
      else
        'default'
      end
    end
  end
end
