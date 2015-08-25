# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frontend_generators/version'

Gem::Specification.new do |spec|
  spec.name          = "frontend-generators"
  spec.version       = FrontendGenerators::VERSION
  spec.authors       = ["MrPowers"]
  spec.email         = ["matthewkevinpowers@gmail.com"]

  spec.summary       = %q{Rake tasks to get Bootstrap, Font Awesome, and Start Bootstrap themes into your Rails application}
  spec.description   = %q{There are separate Ruby gems to access Bootstrap and Font Awesome in your Rails application, but they can be annoying when it comes time to deploy or when you want to look at the source code.  These rake tasks actually move the source code into your application, so you have full control.  The rake tasks also make it easy to add Start Bootstrap themes to your site, which can be a pain.}
  spec.homepage      = "https://github.com/MrPowers/frontend-generators"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "rainbow", "2.0.0"
  spec.add_dependency "turf", "0.0.5"
end
