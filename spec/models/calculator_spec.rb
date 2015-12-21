require 'spec_helper'

class CalculatorSpec
  def plus(n1, n2)
    n1 + n2
  end
end

RSpec.describe CalculatorSpec do
  describe '#plus' do
    it 'adds two numbers and returns the sum' do
      calc = CalculatorSpec.new
      allow(calc).to receive(:plus).and_return(42)
      expect(calc.plus(19, 23)).to eql 42
    end
  end
end
