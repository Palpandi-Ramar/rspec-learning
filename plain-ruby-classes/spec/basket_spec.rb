# spec/basket_spec.rb
require_relative "../basket"

RSpec.describe Basket do
  let(:basket) { Basket.new }

  it "demonstrates common matchers" do
    basket.add("apple")
    basket.add("banana")

    # eq → exact value comparison
    expect(basket.total_items).to eq(2)

    # be → truthy / falsy or identity check
    expect(basket.items.empty?).to be false
    expect(basket.items).to be_an(Array)

    # include → check collection membership
    expect(basket.items).to include("apple")

    # raise_error → expect an exception
    expect { basket.dangerous_action }.to raise_error(StandardError, "Something went wrong!")
  end
end
