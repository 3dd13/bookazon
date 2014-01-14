require 'spec_helper'

describe AuthorsController do
  describe "GET 'index'" do
    def submit_index
      @first_book = FactoryGirl.create(:book, author: "First")
      @second_book = FactoryGirl.create(:book, author: "Second")
      
      get 'index', name: @first_book.author
    end
    
    it "returns http success" do
      submit_index
      
      response.should be_success
    end
    
    it "should only returns first_book" do
      submit_index
      
      assigns(:books).should eq [@first_book]
    end
  end

end
