require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      name: "Name",
      description: "MyText",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Address/)
  end
end
