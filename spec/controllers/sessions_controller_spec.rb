require 'spec_helper'

describe SessionsController do
  describe "#create" do
    context "when there is correct email and password" do
      it "should return success" do
        post 'create', {email: "123@abc.com", password: "12345678"}
        response.code.should eq "200"
      end
    end

    context "when there is incorrect email and password" do
      it "should return unauthorized" do
        post 'create', {email: "123@abc.com", password: "abcdefgh"}
        response.code.should eq "401"
      end
    end
  end
end