require 'spec_helper'

describe "shopping_cart_items/new" do
  before(:each) do
    assign(:shopping_cart_item, stub_model(ShoppingCartItem,
      :user_id => 1,
      :book_id => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new shopping_cart_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shopping_cart_items_path, "post" do
      assert_select "input#shopping_cart_item_user_id[name=?]", "shopping_cart_item[user_id]"
      assert_select "input#shopping_cart_item_book_id[name=?]", "shopping_cart_item[book_id]"
      assert_select "input#shopping_cart_item_quantity[name=?]", "shopping_cart_item[quantity]"
    end
  end
end
