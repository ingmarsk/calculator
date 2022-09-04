# frozen_string_literal: true

require 'cli'

RSpec.describe CLI do
  subject { described_class }

  describe '.start' do
    it 'returns the addition of the 2 user input values' do
      allow(subject).to receive(:get_first_number_user_input).and_return(1)
      allow(subject).to receive(:get_second_number_user_input).and_return(2)

      expect(subject.start).to eq(3)
    end
  end
end
