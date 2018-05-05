# frozen_string_literal: true

RSpec.describe Daitai::Comparator do
  it 'creates a comparator function based on a predicate function' do
    comparator = Daitai.comparator.(->(a, b) { a > b })
    expect([3, 1, 2, 4].sort(&comparator)).to eql([4, 3, 2, 1])
  end
end
