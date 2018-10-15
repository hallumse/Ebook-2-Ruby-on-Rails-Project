class AuthorsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    Author.create(title: params[:book][:title])
    redirect_to authors_index_path
  end
end
