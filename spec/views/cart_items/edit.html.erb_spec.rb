require 'rails_helper'

RSpec.describe "cart_items/edit", type: :view do
  before(:each) do
    @cart_item = assign(:cart_item, CartItem.create!(
      cart: nil,
      item: nil,
      quantity: 1
    ))
  end

  it "renders the edit cart_item form" do
    render

    assert_select "form[action=?][method=?]", cart_item_path(@cart_item), "post" do

      assert_select "input[name=?]", "cart_item[cart_id]"

      assert_select "input[name=?]", "cart_item[item_id]"

      assert_select "input[name=?]", "cart_item[quantity]"
    end
  end
end
