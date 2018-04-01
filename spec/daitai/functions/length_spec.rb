# frozen_string_literal: true

RSpec.describe Daitai::Length do
  it 'returns the length of a list' do
    expect(Daitai.length.([1, 2, 3, 4])).to eql(4)
  end

  it 'returns the length of a string' do
    expect(Daitai.length.('Ruby')).to eql(4)
  end

  it 'returns 0 for an empty list' do
    expect(Daitai.length.([])).to eql(0)
  end

  it 'returns 0 for an empty string' do
    expect(Daitai.length.('')).to eql(0)
  end
end
