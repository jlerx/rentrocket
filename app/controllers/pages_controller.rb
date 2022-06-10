class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @offers = Offer.where(user: current_user)
    @orders = Order.where(user: current_user)
    @demands_reservation = []
    @demands = Order.all
    @demands.select do |demand|
      demand.user_id == current_user.id
      @demands_reservation << demand
    end
  end

  def favoris
    @offers = Offer.all
  end
end
