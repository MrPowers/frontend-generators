require 'spec_helper'

module FrontendGenerators; describe AssetsCopier do

  context "#copy_assets" do
    it "copies the assets in a new directory" do
      copier = AssetsCopier.new("assets/bootstrap/")
      copier.copy_assets
    end
  end

end; end
