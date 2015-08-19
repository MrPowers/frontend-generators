namespace :add_assets do
  desc "Add Bootstrap assets to your project"
  task :bootstrap do
    FrontendGenerators::Bootstrap.new.add_assets
  end
end
