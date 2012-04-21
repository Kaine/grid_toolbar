require 'rails/generators'

module GridToolbar
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_stylesheet_file
      copy_file "got_style.css.sass", "vendor/assets/stylesheets/got_style.css.sass"
    end

    def copy_script_file
      copy_file "got_script.js", "vendor/assets/javascripts/got_script.js"
    end

    def copy_images
      directory "images", "vendor/assets/images"
    end

    def copy_fonts
      directory "fonts", "vendor/assets/fonts"
    end

    def add_assets
      js_file  = 'app/assets/javascripts/application.js'
      css_file = 'app/assets/stylesheets/application.css'

      if File.exist? js_file
        insert_into_file js_file, "//= require got_script\n", :after => "jquery_ujs\n"
      else
        copy_file "application.js", js_file
      end

      if File.exist? css_file
        insert_into_file css_file, "*= require got_style\n", :after => "require_tree .\n"
      else
        copy_file "application.css", css_file
      end
    end
  end
end
