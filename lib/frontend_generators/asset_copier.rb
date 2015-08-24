module FrontendGenerators; class AssetCopier

  attr_reader :asset_path, :asset_root_dirname

  def initialize(asset_path, asset_root_dirname)
    @asset_path = asset_path
    @asset_root_dirname = asset_root_dirname
  end

  def full_copy
    FileUtils.mkdir_p(destination_dirname)
    copy_asset
    puts message
  end

  def copy_asset
    FileUtils.cp(asset_path, destination_dirname)
  end

  def message
    "#{Rainbow("create").green}    #{destination_partial_path}"
  end

  def destination_dirname
    p = asset_path.gsub(asset_root_dirname, Turf.find(:destination_root).to_s)
    dirname = File.dirname(p)
    FileUtils.mkdir_p(dirname)
    dirname
  end

  def destination_partial_path
    asset_path.gsub(asset_root_dirname, "")
  end

end; end

