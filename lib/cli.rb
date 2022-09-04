# frozen_string_literal: true

require_relative 'calculator'

class CLI
  def self.start
    first_number = user_input(msg: 'First Number:')
    second_number = user_input(msg: 'Second Number:')

    if valid_values?(first_number, second_number)
      puts Calculator.sum(first_number.to_i, second_number.to_i)
    else
      puts error_msg
    end
  end

  private

  def user_input(msg)
    puts msg
    gets.chomp
  end

  def self.valid_values?(x, y)
    begin
      Integer(x)
      Integer(y)
      true
    rescue ArgumentError
      false
    end
  end

  def self.error_msg
    "Invalid inputs, please make sure to enter integers"
  end
end
