RSpec.describe Daitai::Product do
  it 'returns the product of a list' do
    expect(Daitai.product.([1, 2, 3, 4])).to be(24)
  end

  it 'returns one for an empty list' do
    expect(Daitai.product.([])).to be(1)
  end
end
