# frozen_string_literal: true

RSpec.describe Daitai::Tail do
  it 'returns all the elements of a list except the first one' do
    expect(Daitai.tail.([1, 2, 3, 4])).to eql([2, 3, 4])
  end

  it 'returns all the character of a string except the first one' do
    expect(Daitai.tail.('Ruby')).to eql('uby')
  end

  it 'returns nil for an empty list' do
    expect(Daitai.tail.([])).to eql(nil)
  end

  it 'returns nil for an empty string' do
    expect(Daitai.tail.('')).to eql(nil)
  end
end
