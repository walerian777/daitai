# frozen_string_literal: true

RSpec.describe Daitai::Sum do
  it 'returns the sum of a list' do
    expect(Daitai.sum.([1, 2, 3, 4])).to eql(10)
  end

  it 'returns zero for an empty list' do
    expect(Daitai.sum.([])).to eql(0)
  end
end
