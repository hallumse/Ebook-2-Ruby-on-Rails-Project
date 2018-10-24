class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    PurchaseMailer.with(user: User.first).thank_you.deliver_later

    @current_page = params[:page] || 1

    @users = User.page(@current_page)
    @prev_page = User.page(@current_page).prev_page
    @next_page = User.page(@current_page).next_page
  end

  def styleguide

  end
end
