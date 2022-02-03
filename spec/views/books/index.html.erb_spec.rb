require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        price: 2.5,
        published_date: 'March 22nd, 2001'
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        price: 2.5,
        published_date: 'March 22nd, 2001'
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 'March 22nd, 2001'.to_s, count: 2
  end
end
