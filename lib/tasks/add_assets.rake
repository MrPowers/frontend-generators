namespace :add_assets do

  desc "Add Bootstrap assets to your project"
  task :bootstrap do
    copier = FrontendGenerators::AssetsCopier.new("assets/bootstrap/")
    copier.copy_assets
  end

  desc "Add Font-Awesome assets to your project"
  task :font_awesome do
    copier = FrontendGenerators::AssetsCopier.new("assets/font_awesome/")
    copier.copy_assets
  end

end
