class StaticPagesController < ApplicationController

  def thank_you
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	UserMailer.contact_form(@email, @name, @message).deliver
  end
	# layout "static"
  def landing_page
  @products = Product.limit(3)
  end
end


