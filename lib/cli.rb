# frozen_string_literal: true

require_relative 'calculator'

class CLI
  def self.start
    first_number = get_first_number_user_input
    second_number = get_second_number_user_input

    puts Calculator.sum(first_number, second_number)
  end

  private

  def self.get_first_number_user_input
    puts 'First Number:'
    gets.chomp.to_i
  end

  def self.get_second_number_user_input
    puts 'Second Number:'
    gets.chomp.to_i
  end
end
