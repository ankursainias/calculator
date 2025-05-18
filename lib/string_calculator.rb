# frozen_string_literal: true

class StringCalculator
  class NegativeNumberError < StandardError; end

  def add(string)
    # Step 1: Handle empty string
    return 0 if string.empty?

    # Step 2: Handle single number
    return string.to_i if !string.include?(',') && !string.include?("\n") && !string.start_with?('//')

    # Step 3: Handle custom delimiter
    delimiters = [',', "\n"]
    if string.start_with?('//')
      delimiter_end = string.index("\n")
      raise ArgumentError, "Invalid delimiter format" if delimiter_end.nil?
      
      delimiter_section = string[2...delimiter_end]
      if delimiter_section.start_with?('[') && delimiter_section.end_with?(']')
        delimiters = delimiter_section.scan(/\[(.*?)\]/).flatten
      else
        delimiters = [delimiter_section]
      end
      
      string = string[(delimiter_end + 1)..]
    end

    # Step 4: Parse numbers and validate
    numbers = []
    current_number = ""
    
    string.each_char do |char|
      if delimiters.include?(char)
        numbers << current_number.to_i unless current_number.empty?
        current_number = ""
      else
        current_number = current_number + char
      end
    end
    
    numbers << current_number.to_i unless current_number.empty?

    # Step 5: Validate negative numbers
    negative_numbers = numbers.select { |n| n < 0 }
    if negative_numbers.any?
      raise NegativeNumberError, "negative numbers not allowed #{negative_numbers.join(', ')}"
    end

    numbers.sum
  end
end
