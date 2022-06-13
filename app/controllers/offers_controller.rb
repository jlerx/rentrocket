class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.where(user: current_user)
    @offers = policy_scope(Offer).order(created_at: :desc)
    @offers = @offers.reject { |offer| offer.user_id == current_user.id }
    @demands_reservation = []
    @demands = Order.all
    @demands.select do |demand|
      demand.user_id == current_user.id

      @demands_reservation << demand
    end
    if params[:query].present?
      @offers = Offer.search_by_title(params[:query])
    else
      @offers
    end
  end

  def show
    @order = Order.new
    @demands_reservation = []
    @demands = Order.all
    @demands.select do |demand|
      demand.user_id == current_user.id

      @demands_reservation << demand
    end
    authorize @order
    authorize @offer

  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
    authorize @offer
  end

  def edit
    authorize @offer
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path
    authorize @offer
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
    authorize @offer
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :price, :brand, :model, :year, :horsepower, :km_age, :body_type, :user_id, :image , :address)
  end
end
