require 'rails_helper'

RSpec.describe "libraries/index", type: :view do
  before(:each) do
    assign(:libraries, [
      Library.create!(
        user_id: 2,
        book_id: 3
      ),
      Library.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of libraries" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
