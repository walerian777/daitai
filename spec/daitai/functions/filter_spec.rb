# frozen_string_literal: true

RSpec.describe Daitai::Filter do
  it 'filters an array' do
    expect(Daitai.filter.(:even?, [1, 2, 3, 4])).to eql([2, 4])
  end

  it 'returns an empty array for no matching elements' do
    expect(Daitai.filter.(->(x) { x > 10 }, [1, 2, 9, 10])).to eql([])
  end

  it 'returns an empty array for an empty filterable' do
    expect(Daitai.filter.(:even?, [])).to eql([])
  end

  it 'filters a hash' do
    even = ->(x) { x.even? }

    expect(Daitai.filter.(even, w: 1, x: 2, y: 3, z: 4)).to eql(x: 2, z: 4)
  end

  it 'is curried' do
    take_even = Daitai.filter.(->(x) { x.even? })

    expect(take_even.([1, 2, 3, 4])).to eql([2, 4])
  end
end
