class AdminController < ApplicationController
before_action :authenticate_user!
  def index
  end

  def display_authors
    @authors = Author.all
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
