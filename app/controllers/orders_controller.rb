class OrdersController < ApplicationController

  protect_from_forgery with: :null_session
  respond_to :json, :html 

  def index
    @orders = Order.includes(:product, :user).all.to_json(:include => [:product, :user])
    respond_with @orders
  end
  def show
    @order = Order.find(params[:id]).to_json(:include => [{:product => {:only => :name}}, {:user => {:only => :email}}])
    respond_with @order
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    respond_with @order
  end

  def destroy
    respond_with Order.destroy(params[:id])

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:product_id, :user_id, :total)
    end
  end

