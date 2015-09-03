class CleanBlogsController < ApplicationController
	layout "clean_blog"

	def index
	end

	def about
	end

	def post
	end

	def contact
	end

	def mail
		name = params[:name]
		email = params[:email]
		phone = params[:phone]
		message = params[:message]
		ContactMailer.contact(name, email, phone, message).deliver_now
		redirect_to contact_path
		flash[:success] = "Mail sent!"
	end
end
