class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @offers = Offer.where(user: current_user)
    @orders = Order.where(user: current_user)
    #@offer = Offer.new

    @demands_reservation = []
    @demands = Order.all
    @demands.each do |demand|
      @demands_reservation << demand if demand.offer.user == @user
    end

  end
end
