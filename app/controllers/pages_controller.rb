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
      demand.offer.user == @user
    end
  end
end
