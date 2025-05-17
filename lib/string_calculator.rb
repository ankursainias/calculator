# frozen_string_literal: true

class Calculator
  class NegativeNumberError < StandardError; end

  def add(string)
    # Step 1: Handle empty string
    return 0 if string.empty?

    # Step 2: Handle single number
    return string.to_i if !string.include?(',') && !string.include?("\n") && !string.start_with?('//')

  end
end
