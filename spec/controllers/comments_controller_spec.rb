require 'spec_helper'

describe CommentsController do
  login_as_admin
  
  describe "POST create" do
    describe "with comment text provided" do
      def submit_create
        @book = FactoryGirl.create(:book)
        
        post :create, {
          :comment => {
            content: "Something",
            book_id: @book.id,
          },
          format: :json
        }
      end
      
      it "creates a new Comment" do
        expect {
          submit_create
        }.to change(Comment, :count).by(1)
      end
      
      it "should return created" do
        submit_create
        
        response.code.should eq "201"
      end
    end
  end
end
