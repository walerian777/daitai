# frozen_string_literal: true

RSpec.describe Daitai::Reduce do
  it 'reduces simple functions over arrays' do
    add      = ->(x, y) { x + y }
    multiply = ->(x, y) { x * y }

    expect(Daitai.reduce.(add,      0, [1, 2, 3, 4])).to eql(10)
    expect(Daitai.reduce.(multiply, 1, [1, 2, 3, 4])).to eql(24)
  end

  it 'returns the accumulator for an empty array' do
    multiply = ->(x, y) { x * y }

    expect(Daitai.reduce.(multiply, 1, [])).to eql(1)
  end

  it 'is curried' do
    add = ->(x, y) { x + y }
    sum = Daitai.reduce.(add, 0)

    expect(sum.([1, 2, 3, 4])).to eql(10)
  end
end
