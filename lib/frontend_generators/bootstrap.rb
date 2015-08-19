module FrontendGenerators; class Bootstrap

  def add_assets
    FileUtils.cp(bootstrap_css, css_destination)
    FileUtils.cp(bootstrap_js, js_destination)
    FileUtils.mkdir_p(fonts_dirname)
    FileUtils.cp(fonts, fonts_dirname)
  end

  def fonts
    Dir.glob("#{root}/assets/bootstrap/fonts/**/*")
  end

  def fonts_dirname
    File.join(Rails.root, "public", "fonts")
  end

  def css_destination
    File.join(Rails.root, "vendor", "assets", "stylesheets")
  end

  def bootstrap_css
    File.join(root, "assets", "bootstrap", "bootstrap.css")
  end

  def bootstrap_js
    File.join(root, "assets", "bootstrap", "bootstrap.js")
  end

  def js_destination
    File.join(Rails.root, "vendor", "assets", "javascripts")
  end

  def root
    File.expand_path("../../", File.dirname(__FILE__))
  end

end; end
