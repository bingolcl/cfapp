class PaymentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    Stripe.verify_ssl_certs = false
    # Create the charge on Stripe's servers - this will charge the user's card
begin
			charge = Stripe::Charge.create(
				:amount => (@product.price*100.to_i), #amount in cents
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
				)

				if charge.paid && signed_in?
					Order.create!(product_id: @product.id, user_id: @user.id, total: @product.price)
				end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
 end