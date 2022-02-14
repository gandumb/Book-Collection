require 'rails_helper'

RSpec.describe "libraries/show", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      user_id: 2,
      book_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
