module FrontendGenerators; class AssetsCopier

  attr_reader :local_asset_dirname

  # local_asset_dirname is assets/bootstrap/ or assets/font_awesome/

  def initialize(local_asset_dirname, destination_root = Rails.root)
    @local_asset_dirname = local_asset_dirname
    @destination_root = destination_root
  end

  def copy_assets
    local_assets.each do |local_asset_path|
      d = destination_asset_dirname(local_asset_path)
      p "Copying #{File.basename(local_asset_path)} to #{d}"
      FileUtils.mkdir_p(d)
      copy_asset(local_asset_path)
    end
  end

  def local_assets_root
    "#{root}/#{local_asset_dirname}"
  end

  def local_assets
    Dir.glob("#{local_assets_root}**/*").select{|f| File.file?(f)}
  end

  def destination_asset_dirname(local_asset_path)
    p = local_asset_path.gsub(local_assets_root, destination_root)
    File.dirname(p)
  end

  def copy_asset(local_asset_path)
    destination = destination_asset_dirname(local_asset_path)
    FileUtils.cp(local_asset_path, destination)
  end

  def root
    File.expand_path("../../", File.dirname(__FILE__))
  end

  def destination_root
    "#{@destination_root}/"
  end

end; end

