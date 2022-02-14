require 'rails_helper'

RSpec.describe "libraries/edit", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit library form" do
    render

    assert_select "form[action=?][method=?]", library_path(@library), "post" do

      assert_select "input[name=?]", "library[user_id]"

      assert_select "input[name=?]", "library[book_id]"
    end
  end
end
