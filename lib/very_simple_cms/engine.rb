module VerySimpleCms
  class Engine < ::Rails::Engine
    isolate_namespace VerySimpleCms

    initializer 'very_simple_cms.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper VerySimpleCms::CmsHelper
        helper VerySimpleCms::SharedHelper
        helper VerySimpleCms::ApplicationHelper
      end
    end
  end
end
