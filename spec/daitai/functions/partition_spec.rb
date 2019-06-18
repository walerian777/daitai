# frozen_string_literal: true

RSpec.describe Daitai::Partition do
  it 'partitions an array' do
    expect(Daitai.partition.(:even?, [1, 2, 3, 4])).to eql([[2, 4], [1, 3]])
  end

  it 'returns an array of two empty arrays for an empty partitionable' do
    expect(Daitai.partition.(:even?, [])).to eql([[], []])
  end

  it 'partitions a hash' do
    even = ->(x) { x.even? }

    expect(Daitai.partition.(even, w: 1, x: 2, y: 3, z: 4)).to eql([{ x: 2, z: 4 }, { w: 1, y: 3 }])
  end

  it 'is curried' do
    take_even = Daitai.partition.(->(x) { x.even? })

    expect(take_even.([1, 2, 3, 4])).to eql([[2, 4], [1, 3]])
  end
end
