class AuthorsController < ApplicationController
  def index
    @books = Book.where(author: params[:author_name])
  end
end
