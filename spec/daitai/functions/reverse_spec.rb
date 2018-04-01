# frozen_string_literal: true

RSpec.describe Daitai::Reverse do
  it 'returns the elements of a list in reverse order' do
    expect(Daitai.reverse.([1, 2, 3, 4])).to eql([4, 3, 2, 1])
  end

  it 'returns the characters of a string in reverse order' do
    expect(Daitai.reverse.('raw desserts')).to eql('stressed war')
  end

  it 'returns an empty list for an empty list' do
    expect(Daitai.reverse.([])).to eql([])
  end

  it 'returns an empty string for an empty string' do
    expect(Daitai.reverse.('')).to eql('')
  end
end
