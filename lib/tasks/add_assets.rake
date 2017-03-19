namespace :add_assets do

  [:bootstrap, :creative, :font_awesome, :freelancer, :stylish_portfolio, :clean_blog, :grayscale, :new_age].each do |asset|
    desc "Add #{asset} assets to your project"
    task asset do
      copier = FrontendGenerators::AssetsCopier.new(asset)
      copier.copy_assets
    end
  end

end
