require 'rails_helper'

RSpec.describe "libraries/new", type: :view do
  before(:each) do
    assign(:library, Library.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new library form" do
    render

    assert_select "form[action=?][method=?]", libraries_path, "post" do

      assert_select "input[name=?]", "library[user_id]"

      assert_select "input[name=?]", "library[book_id]"
    end
  end
end
