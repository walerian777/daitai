# frozen_string_literal: true

RSpec.describe Daitai::Product do
  it 'returns the product of a list' do
    expect(Daitai.product.([1, 2, 3, 4])).to eql(24)
  end

  it 'returns one for an empty list' do
    expect(Daitai.product.([])).to eql(1)
  end
end
