require "rainbow"
require "turf"

turf_path = File.expand_path("../config/turf/", File.dirname(__FILE__))
Dir.glob("#{turf_path}/*.rb").each {|f| require f}

require "frontend_generators/version"
require_relative "./frontend_generators/asset_copier.rb"
require_relative "./frontend_generators/assets_copier.rb"

module FrontendGenerators

end
