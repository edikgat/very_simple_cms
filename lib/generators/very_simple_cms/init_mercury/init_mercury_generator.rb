module VerySimpleCms
  class InitMercuryGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def appent_to_mercury
      append_to_file "app/assets/javascripts/mercury.js" do
        "
        $(window).on('mercury:ready', function() {
          var link = $('.admin_edit_link');

          if(Mercury.saveUrl !== null) { 
            Mercury.saveUrl = link.attr('data-save-url');
          }
          link.hide(Mercury.saveUrl);
        });

        $(window).on('mercury:saved', function() {
          window.location = window.location.href.replace(/\\/editor\\//i, '/');
        });
        "
      end
    end
  end
end
