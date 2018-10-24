class Admin::BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
   @book = Book.find(params[:id])
   @book.title = params[:book][:title]
   @book.save
   redirect_to book_path(@book)
  end

  def create
    Book.create(title: params[:book][:title])
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
   Book.find(params[:id]).destroy
   redirect_to books_path
  end
end
