# String Calculator

A Ruby implementation of a string calculator.

## Features

- Add numbers from a string input
- Support for multiple delimiter types
- Custom delimiter support
- Negative number validation

## Project Structure

```
.
├── lib
│   └── string_calculator.rb
├── spec
│   ├── calculator_spec.rb
│   └── spec_helper.rb
├── Gemfile
├── Gemfile.lock
└── README.md
```

## Installation

1. Clone the repository
2. Run `bundle install`

## Running Tests

```bash
bundle exec rspec
```

## Usage (Ruby IRB)

```ruby
require_relative 'lib/string_calculator'

calculator = StringCalculator.new
result = calculator.add("1,2,3")  # Returns 6
```