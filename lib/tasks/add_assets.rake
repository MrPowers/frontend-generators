namespace :add_assets do

  desc "Add Bootstrap assets to your project"
  task :bootstrap do
    FrontendGenerators::Bootstrap.new.add_assets
  end

  desc "Add Font-Awesome assets to your project"
  task :font_awesome do
    FrontendGenerators::FontAwesome.new.add_assets
  end

end
