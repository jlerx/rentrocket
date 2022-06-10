class OrdersController < ApplicationController
  before_action :set_offer, only: [:index, :new, :create, :show] #[:show, :update, :destroy]
  before_action :set_order, except: [:index, :new, :create] #only:[:show, :update, :destroy]

  def create
    @order = Order.new(order_params)
    @order.offer = @offer
    @order.user = current_user
    if @order.save!
      redirect_to dashboard_path
    else
      render :new
    end
    authorize @order
    #raise
  end

  def index
    # @orders = Order.where(order_id: current_user.id)
    @orders = Order.all
  end

  def new
    @order = Order.new
    authorize @order
  end

  def show
    #@offer = order.offer
    authorize @order
  end

  def edit
    authorize @order
  end

  def update
    @order.status = false
    @user = current_user
    # @order.user = current_user
    @order.save
    redirect_to dashboard_path
    authorize @order
  end

  def destroy
    @order.user = current_user
    @order.destroy
    redirect_to dashboard_path
    authorize @order
  end

  private

  def order_params
    params.require(:order).permit(:offer, :user, :date_start, :date_end)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end
end
