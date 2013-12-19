require 'spec_helper'

describe "shopping_cart_items/edit" do
  before(:each) do
    @shopping_cart_item = assign(:shopping_cart_item, stub_model(ShoppingCartItem,
      :user_id => 1,
      :book_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit shopping_cart_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shopping_cart_item_path(@shopping_cart_item), "post" do
      assert_select "input#shopping_cart_item_user_id[name=?]", "shopping_cart_item[user_id]"
      assert_select "input#shopping_cart_item_book_id[name=?]", "shopping_cart_item[book_id]"
      assert_select "input#shopping_cart_item_quantity[name=?]", "shopping_cart_item[quantity]"
    end
  end
end
