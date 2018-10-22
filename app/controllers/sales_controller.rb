class SalesController < ApplicationController
  # before_action :authenticate_user!
  require "stripe"

  def index
    @sales = current_user.sales
  end

  def show
    @sales = Sale.find params[:id]
  end

  def new
    @sale = Sale.new
  end

  def create
    Stripe.api_key = Etoria_Ebooks_2::Application.credentials.stripe[:secret_key]

    amount = (@book.price * 100).to_i

    stripe_charge = Stripe::Charge.create(
      amount: amount,
      currency: "usd",
      source: params[:sale][:stripe_token],
      description: "#{current_user.email} purchased #{@book.title}"
      )

    Sale.create(book: @book, user: current_user, stripe_charge_id: stripe_charge.id)
    redirect_to sales_path
    # @sale = Sale.create(book:params[:book_id])
    # redirect_to sales_path
  end

private

  def load_book
    @book = Book.find(params[:book_id])
  end
end
