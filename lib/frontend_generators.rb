require "frontend_generators/version"

module FrontendGenerators
  class Bootstrap

    def run
      FileUtils.cp(bootstrap_css, css_destination)
    end

    def css_destination
      File.join(Rails.root, "vendor", "stylesheets", "bootstrap.css")
    end

    def bootstrap_css
      File.join(root, "assets", "bootstrap", "bootstrap.css")
    end

    def root
      File.expand_path("../", File.dirname(__FILE__))
    end

  end
end
