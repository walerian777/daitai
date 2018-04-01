# frozen_string_literal: true

RSpec.describe Daitai::All do
  it 'returns true when all elements of the list satisfy the predicate' do
    expect(Daitai.all.(:even?, [2, 4, 6, 8])).to eql(true)
  end

  it 'returns false when at least one element of the list does not satisfy the predicate' do
    expect(Daitai.all.(:even?, [2, 4, 7, 8])).to eql(false)
  end

  it 'returns true when the list is empty' do
    noop = -> {}

    expect(Daitai.all.(noop, [])).to eql(true)
  end

  it 'handles more complex lists' do
    list = [{ k: 2 }, { k: 4 }, { k: 6 }, { k: 8 }]
    even = ->(x) { x.even? }
    even_k = ->(hash) { even.(hash[:k]) }

    expect(Daitai.all.(even_k, list)).to eql(true)
  end

  it 'is curried' do
    all_even = Daitai.all.(:even?)

    expect(all_even.([2, 4, 6, 8])).to eql(true)
  end
end
