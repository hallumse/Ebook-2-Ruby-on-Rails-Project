class Admin::BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    # Book.create(title: params[:book][:title])
    # redirect_to books_index_path
  end

  def create
    Book.create(title: params[:book][:title])
    redirect_to books_index_path
  end

  def destroy
  end
end
