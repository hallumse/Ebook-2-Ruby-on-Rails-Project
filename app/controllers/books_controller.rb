class BooksController < ApplicationController
  # before_action :authenticate_user!
  def index
    @books = Book.all
  end

  def show
    # params[:id]
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(title: params[:book][:title])
    redirect_to books_index_path
  end
end
