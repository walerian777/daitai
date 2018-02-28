# frozen_string_literal: true

RSpec.describe Daitai::Sum do
  it 'returns the sum of a list' do
    expect(Daitai.sum.([1, 2, 3, 4])).to be(10)
  end

  it 'returns zero for an empty list' do
    expect(Daitai.sum.([])).to be(0)
  end
end
