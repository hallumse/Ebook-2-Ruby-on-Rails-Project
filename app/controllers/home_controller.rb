class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    PurchaseMailer.with(user: User.first).thank_you.deliver_later
  end

  def styleguide

  end
end
