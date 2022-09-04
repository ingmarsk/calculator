# frozen_string_literal: true

require 'cli'

RSpec.describe CLI do
  subject { described_class }

  describe '.start' do
    context 'with valid input values' do
      let(:first_input) { 1 }
      let(:second_input) { 2 }

      it 'returns the addition of the 2 user input values' do
        allow(subject).to receive(:user_input).with(msg: 'First Number:').and_return(first_input)
        allow(subject).to receive(:user_input).with(msg: 'Second Number:').and_return(second_input)
  
        expect { subject.start }.to output("3\n").to_stdout
      end
    end

    context 'with invalid input values' do
      let(:first_input) { 'a' }
      let(:second_input) { 'b' }

      it 'returns an error message' do
        allow(subject).to receive(:user_input).with(msg: 'First Number:').and_return(first_input)
        allow(subject).to receive(:user_input).with(msg: 'Second Number:').and_return(second_input)
  
        expect { subject.start }.to output("Invalid inputs, please make sure to enter integers\n").to_stdout
      end
    end
  end
end
