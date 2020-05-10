# frozen_string_literal: true

RSpec.describe Rollenspielsache::Bot do
  it 'has a version number' do
    expect(Rollenspielsache::Bot::VERSION).not_to be nil
  end

  it 'Produces a roll' do
    test = Rollenspielsache::Bot::StringRoller.new '1d1'
    expect(test.base).to eq(1)
  end
end
