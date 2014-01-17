class Admins::DashboardController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @number_of_users = User.count
    @number_of_books = Book.count
    
    @chart_labels = ["Jan", "Feb"]
    @line1_data = [15, 5]
    @line2_data = [50, 20]
  end
end