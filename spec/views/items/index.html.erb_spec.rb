require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        name: "Name",
        description: "MyText",
        price: "9.99",
        stock_quantity: 2
      ),
      Item.create!(
        name: "Name",
        description: "MyText",
        price: "9.99",
        stock_quantity: 2
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
