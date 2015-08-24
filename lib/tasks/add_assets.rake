namespace :add_assets do

  [:bootstrap, :creative, :font_awesome, :freelancer, :stylish_portfolio].each do |asset|
    desc "Add #{asset} assets to your project"
    task asset do
      copier = FrontendGenerators::AssetsCopier.new(asset)
      copier.copy_assets
    end
  end

end
