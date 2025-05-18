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

  end
end