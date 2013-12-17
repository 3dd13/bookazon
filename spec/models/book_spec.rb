require 'spec_helper'

describe Book do
  describe "#description" do    
    it "should returns long description" do
      book = Book.new(title: "Awesome", author: "Me")
      book.description.should eq "Awesome by Me"
    end
  end
  
  describe "#description" do
    it "should returns long description" do
      book = Book.new(title: "ABC", author: "Another")
      book.description.should eq "ABC by Another"
    end
  end
  
  describe "#validates" do
    context "when there is empty title" do
      it "should be invalid" do
        book = Book.new(title: "")
        book.should_not be_valid
      end
    end
    
    context "when there is title, author, isbn and price" do    
      it "should be valid" do
        data = {
          title: "First", 
          author: "Tester", 
          isbn: "12345", 
          price: 1
        }
        book = Book.new(data)
        book.should be_valid
      end
    end
    
    # context "when there is no title" do    
    #   it "should be invalid" do
    #     book = Book.new(title: nil)
    #     book.should_not be_valid
    #   end      
    # end
  end
end