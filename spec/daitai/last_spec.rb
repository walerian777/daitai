# frozen_string_literal: true

RSpec.describe Daitai::Last do
  it 'returns the last element of a list' do
    expect(Daitai.last.([1, 2, 3, 4])).to eql(4)
  end

  it 'returns the last character of a string' do
    expect(Daitai.last.('Ruby')).to eql('y')
  end

  it 'returns nil for an empty list' do
    expect(Daitai.last.([])).to eql(nil)
  end

  it 'returns nil for an empty string' do
    expect(Daitai.last.('')).to eql(nil)
  end
end
