require "frontend_generators/version"

module FrontendGenerators

  class Bootstrap

    def run
      FileUtils.cp(bootstrap_css, css_destination)
      FileUtils.mkdir_p(fonts_dirname)
      FileUtils.cp(fonts, fonts_dirname)
    end

    def fonts
      Dir.glob("#{root}/assets/bootstrap/fonts/**/*")
    end

    def fonts_dirname
      File.join(Rails.root, "public", "fonts")
    end

    def css_destination
      File.join(Rails.root, "vendor", "assets", "stylesheets")
    end

    def bootstrap_css
      File.join(root, "assets", "bootstrap", "bootstrap.css")
    end

    def root
      File.expand_path("../", File.dirname(__FILE__))
    end

  end

end
