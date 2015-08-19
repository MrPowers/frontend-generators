module FrontendGenerators; class FontAwesome

  def add_assets
    FileUtils.cp(font_awesome_css, css_destination)
    FileUtils.mkdir_p(fonts_dirname)
    FileUtils.cp(fonts, fonts_dirname)
  end

  def fonts
    Dir.glob("#{root}/assets/font_awesome/fonts/**/*")
  end

  def fonts_dirname
    File.join(Rails.root, "public", "fonts")
  end

  def css_destination
    File.join(Rails.root, "vendor", "assets", "stylesheets")
  end

  def font_awesome_css
    File.join(root, "assets", "font_awesome", "font_awesome.css")
  end

  def root
    File.expand_path("../../", File.dirname(__FILE__))
  end

end; end

