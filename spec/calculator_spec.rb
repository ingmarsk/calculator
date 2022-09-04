# frozen_string_literal: true

require 'calculator'

RSpec.describe Calculator do
  describe '.sum' do
    it 'returns the addition of the two numbers' do
      expect(Calculator.sum(1,2)).to eq(3)
    end
  end
end
