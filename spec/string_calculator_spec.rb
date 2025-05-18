require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  subject(:calculator) { described_class.new }

  describe '#add' do
    # 1. empty string
    it 'returns 0 for an empty string' do
      expect(calculator.add('')).to eq(0)
    end

    # 2. single number
    it 'returns the number for a single number' do
      expect(calculator.add('1')).to eq(1)
    end

    # 3. two numbers
    it 'returns the sum of two numbers' do
      expect(calculator.add('1,2')).to eq(3)
    end

    # 4. add new line
    it 'returns the sum of two numbers with new line' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    # 5. custom single delimiter
    it 'supports custom single delimiter' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end