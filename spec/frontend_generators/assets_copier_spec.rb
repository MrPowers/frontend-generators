require 'spec_helper'
require 'fileutils'

module FrontendGenerators
  describe FrontendGenerators::AssetsCopier do

    describe '#bootstrap' do
      before do
        FileUtils.rm_rf("#{Turf.find(:root)}/tmp/public")
        FileUtils.rm_rf("#{Turf.find(:root)}/tmp/vendor")
        copier = AssetsCopier.new(:bootstrap)
        copier.copy_assets
      end

      context ".copy_assets" do
        it "creates the bootstrap files" do
          expect(File.file?("#{Turf.find(:root)}/tmp/vendor/assets/stylesheets/bootstrap.css")).to eq(true)
          expect(File.file?("#{Turf.find(:root)}/tmp/vendor/assets/stylesheets/bootstrap.css")).to eq(true)
          expect(File.file?("#{Turf.find(:root)}/tmp/public/fonts/glyphicons-halflings-regular.eot")).to eq(true)
          expect(File.file?("#{Turf.find(:root)}/tmp/public/fonts/glyphicons-halflings-regular.svg")).to eq(true)
          expect(File.file?("#{Turf.find(:root)}/tmp/public/fonts/glyphicons-halflings-regular.ttf")).to eq(true)
          expect(File.file?("#{Turf.find(:root)}/tmp/public/fonts/glyphicons-halflings-regular.woff")).to eq(true)
          expect(File.file?("#{Turf.find(:root)}/tmp/public/fonts/glyphicons-halflings-regular.woff2")).to eq(true)
        end
      end
    end

    describe '#clean_blog' do
      before do
        FileUtils.rm_rf("#{Turf.find(:root)}/tmp/public")
        FileUtils.rm_rf("#{Turf.find(:root)}/tmp/vendor")
        copier = AssetsCopier.new(:clean_blog)
        copier.copy_assets
      end

      it "creates the clean_blog files" do
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/stylesheets/blog.scss")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/stylesheets/clean_blog/clean-blog.scss")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/javascripts/clean_blog/manifest.js")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/javascripts/clean_blog/clean-blog.js")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/images/clean_blog/post-bg.jpg")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/images/clean_blog/home-bg.jpg")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/images/clean_blog/contact-bg.jpg")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/images/clean_blog/about-bg.jpg")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/assets/images/clean_blog/post-sample-image.jpg")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/controllers/clean_blogs_controller.rb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/_navigation.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/_shim.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/about.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/_header.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/_footer.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/index.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/post.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/clean_blogs/contact.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/views/layouts/clean_blog.html.erb")).to eq(true)
        expect(File.file?("#{Turf.find(:root)}/tmp/app/helpers/clean_blogs_helper.rb")).to eq(true)
      end
    end
  end
end
