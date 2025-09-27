require_relative '../calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  it "returns the sum of two numbers" do
    expect(calc.add(2,3)).to eq(5)
  end

  describe "#divide" do
    context "when divisor is not zero" do
      it "returns the result of division" do
        expect(calc.divide(10, 2)).to eq(5)
      end
    end

    context "when divisor is zero" do
      it "raises ZeroDivisionError" do
        expect { calc.divide(10, 0) }.to raise_error(ZeroDivisionError)
      end
    end
  end


end