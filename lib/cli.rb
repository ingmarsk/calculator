# frozen_string_literal: true

require_relative 'calculator'

class CLI
  def self.start
    loop do
      puts 'Perform new addition? (Y/n)'  
      break if gets.chomp != 'Y'

      prompt_to_user
    end
  end

  private

  def prompt_to_user
    puts 'First Number:'
    first_number = gets.chomp.to_i

    puts 'Second Number:'
    second_number = gets.chomp.to_i

    puts "#{first_number} + #{second_number} = #{Calculator.sum(first_number, second_number)}"
  end
end
