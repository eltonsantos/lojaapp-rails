require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "is valid with valid attributes" do
    customer = Customer.new(name: "John Doe", email: "john@example.com", address: "123 Main St")
    expect(customer).to be_valid
  end

  it "is not valid without a name" do
    customer = Customer.new(email: "john@example.com", address: "123 Main St")
    expect(customer).to_not be_valid
  end

  it "is not valid without a unique email" do
    Customer.create(name: "Jane Doe", email: "jane@example.com", address: "123 Main St")
    customer = Customer.new(name: "John Doe", email: "jane@example.com", address: "456 Elm St")
    expect(customer).to_not be_valid
  end
end