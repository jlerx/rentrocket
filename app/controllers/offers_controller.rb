class OffersController < ApplicationController
  before_action :find_offer, only: [:destroy, :update, :show]
  def index
    @offers = Offer.All
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.save
    redirect_to offer_path(@offer)
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offers_path
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def find_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :price, :brand, :model, :year, :horsepower, :km_age, :body_type)
  end
end
