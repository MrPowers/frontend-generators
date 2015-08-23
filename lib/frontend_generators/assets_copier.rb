module FrontendGenerators; class AssetsCopier

  attr_reader :asset

  def initialize(asset)
    @asset = asset
  end

  def copy_assets
    asset_files.each do |asset_path|
      copier = AssetCopier.new(asset_path, asset_root_dirname)
      copier.full_copy
    end
  end

  def asset_root_dirname
    File.join(Turf.find(:root), "assets", asset.to_s)
  end

  def asset_files
    Dir.glob("#{asset_root_dirname}/**/*").select{|f| File.file?(f)}
  end

end; end

