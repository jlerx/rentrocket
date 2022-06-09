class PagesController < ApplicationController
  def home
  end

  def dashboard
    @offers = Offer.where(user: current_user)
    @orders = Order.where(user: current_user)
    @offer = Offer.new
    @user = current_user
  end
end
