require 'rails_helper'

RSpec.describe "cart_items/index", type: :view do
  before(:each) do
    assign(:cart_items, [
      CartItem.create!(
        cart: nil,
        item: nil,
        quantity: 2
      ),
      CartItem.create!(
        cart: nil,
        item: nil,
        quantity: 2
      )
    ])
  end

  it "renders a list of cart_items" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
