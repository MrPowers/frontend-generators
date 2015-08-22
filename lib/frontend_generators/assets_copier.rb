module FrontendGenerators; class AssetsCopier

  attr_reader :local_asset_dirname

  # local_asset_dirname is assets/bootstrap/ or assets/font_awesome/

  def initialize(local_asset_dirname)
    @local_asset_dirname = local_asset_dirname
  end

  def copy_assets
    local_assets.each do |local_asset_path|
      d = destination_asset_dirname(local_asset_path)
      puts message(local_asset_path)
      FileUtils.mkdir_p(d)
      copy_asset(local_asset_path)
    end
  end

  def message(local_asset_path)
    "#{Rainbow("create").green}    #{destination_truncated_path(local_asset_path)}"
  end

  def local_assets_root
    "#{Turf.find(:root)}/#{local_asset_dirname}"
  end

  def local_assets
    Dir.glob("#{local_assets_root}**/*").select{|f| File.file?(f)}
  end

  def destination_asset_dirname(local_asset_path)
    r = Turf.find(:destination_root)
    FileUtils.mkdir_p(r)
    p = local_asset_path.gsub(local_assets_root, r)
    File.dirname(p)
  end

  def destination_truncated_path(local_asset_path)
    local_asset_path.gsub(local_assets_root, "")
  end

  def copy_asset(local_asset_path)
    destination = destination_asset_dirname(local_asset_path)
    FileUtils.cp(local_asset_path, destination)
  end

end; end

