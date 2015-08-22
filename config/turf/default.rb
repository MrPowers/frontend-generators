module Turf; class Default

  def root
    @root ||= File.expand_path("../../", File.dirname(__FILE__))
  end

  def destination_root
    Rails.root
  end

end; end
