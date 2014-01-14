class HomeController < ApplicationController
  layout 'landing'
  
  def index
    @new_books = Book.order({created_at: :desc}).limit(3)
    @books_ordered_by_author = Book.order(:author)
    @authors = Book.distinct(:author).select(:author).order(:author).map { |book|
      book.author
    }
  end
end
