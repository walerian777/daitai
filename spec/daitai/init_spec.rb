# frozen_string_literal: true

RSpec.describe Daitai::Init do
  it 'returns all the elements of a list except the last one' do
    expect(Daitai.init.([1, 2, 3, 4])).to eql([1, 2, 3])
  end

  it 'returns all the characters of a string except the last one' do
    expect(Daitai.init.('Ruby')).to eql('Rub')
  end

  it 'returns an empty list for an empty list' do
    expect(Daitai.init.([])).to eql([])
  end

  it 'returns an empty string for an empty string' do
    expect(Daitai.init.('')).to eql('')
  end
end
