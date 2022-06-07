class OrdersController < ApplicationController
  before_action :set_order, only: :destroy
  before_action :set_offer, only: [:new, :create]

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(orders_params)
    @order.offer = @offer
    @order.save
    redirect_to order_path(@order)
  end

  def destroy
    @order.destroy
    redirect_to order_path(@order.offer)
  end

  private

  def orders_params
    params.require(:order).permit(:date_start, :date_end, :user_id, :offer_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def set_offer
    @offer = Offer.find(params[:list_id])
  end

end
