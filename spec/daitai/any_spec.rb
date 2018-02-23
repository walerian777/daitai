RSpec.describe Daitai::Any do
  before do
    @even = ->(x) { x % 2 == 0 } # rubocop:disable Style/EvenOdd
  end

  it 'returns true when at least one element of the list satisfies the predicate' do
    expect(Daitai.any.(@even, [1, 3, 5, 6])).to be(true)
  end

  it 'returns false when all elements does not satisfy the predicate' do
    expect(Daitai.any.(@even, [1, 3, 5, 7])).to be(false)
  end
end
