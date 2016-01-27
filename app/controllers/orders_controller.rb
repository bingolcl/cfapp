class OrdersController < ApplicationController
  before_action :set_product, only: [:show, :new, :create, :destroy]
  before_filter :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
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
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:product_id, :product_id, :total,)
    end
  end

