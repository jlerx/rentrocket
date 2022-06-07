class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :update, :destroy]

  def create
    @offer = Offer.find(params[:offer_id])
    @order = Order.new(order_params)
    @orders.offer = @offer
    @orders.user = current_user
    if @order.save
      redirect_to order_path(@order)
    else
      redirect_to offer_path(@offer)
    end
  end

  def index
    @orders = Order.where(order_id: current_user.id)
  end

  def show
    @offer = order.offer
  end

  def update
    @order.save!
    redirect_to order_path(@order)
  end

  def destroy
    @order.destroy
    redirect_to offers_path
  end

  private

  def order_params
    params.require(:order).permit(:offer_id, :user_id, :date_start, :date_end)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
