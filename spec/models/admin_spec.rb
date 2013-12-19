require 'spec_helper'

describe Admin do
  describe "#books" do
    it "should returns books record" do
      admin = FactoryGirl.create(:admin)
      first_book = FactoryGirl.create(:book, admin: admin)
      
      admin.books.should eq [first_book]
    end
  end
end
