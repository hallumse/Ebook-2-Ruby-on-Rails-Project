class SalesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @sales = current_user.sales
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.create(book:params[:book_id])
    redirect_to sales_path
  end

  def show
    @sales = Sale.find params[:id]
  end
end
