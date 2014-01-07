class HomeController < ApplicationController
  layout 'landing'
  
  def index    
    @books = Book.all
  end
end
