class AdminBooksController < ApplicationControllerrou
before_action :authenticate_user!
  def index
    @books = Book.all
  end

  def show
    @books =
  end

  def display_books
    @books = Book.all
  end

  def display_sale
    @sales = Sale.all
  end

  def display_user
    @users = User.all
  end
end
