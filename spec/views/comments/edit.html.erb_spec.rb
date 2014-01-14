require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :content => "MyText",
      :admin_id => 1,
      :book_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
      assert_select "textarea#comment_content[name=?]", "comment[content]"
      assert_select "input#comment_admin_id[name=?]", "comment[admin_id]"
      assert_select "input#comment_book_id[name=?]", "comment[book_id]"
    end
  end
end
