require 'spec_helper'

describe BooksController do
  login_as_admin
  
  describe "#index" do
    it "should be success" do
      get "index"
      response.code.should eq "200"
    end
    
    it "should assigns @books" do
      book = FactoryGirl.create(:book)
      
      get "index"
      
      assigns(:books).should eq [book]
    end
  end
end