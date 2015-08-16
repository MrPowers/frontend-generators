require "frontend_generators/version"

module FrontendGenerators
  class Bootstrap

    def root
      File.expand_path("../", File.dirname(__FILE__))
    end

  end
end
