require 'rails_helper'

RSpec.describe "stores/edit", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      name: "MyString",
      description: "MyText",
      address: "MyString"
    ))
  end

  it "renders the edit store form" do
    render

    assert_select "form[action=?][method=?]", store_path(@store), "post" do

      assert_select "input[name=?]", "store[name]"

      assert_select "textarea[name=?]", "store[description]"

      assert_select "input[name=?]", "store[address]"
    end
  end
end
