require "bundler/gem_tasks"
require "rspec/core/rake_task"

require_relative "./lib/frontend_generators.rb"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

Dir.glob("#{File.dirname(__FILE__)}/lib/tasks/**/*.rake").each { |f| load f }
