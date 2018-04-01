# frozen_string_literal: true

RSpec.describe Daitai::Head do
  it 'returns the first element of a list' do
    expect(Daitai.head.([1, 2, 3, 4])).to eql(1)
  end

  it 'returns the first character of a string' do
    expect(Daitai.head.('Ruby')).to eql('R')
  end

  it 'returns nil for an empty list' do
    expect(Daitai.head.([])).to eql(nil)
  end

  it 'returns nil for an empty string' do
    expect(Daitai.head.('')).to eql(nil)
  end
end
