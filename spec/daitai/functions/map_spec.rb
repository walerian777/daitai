# frozen_string_literal: true

RSpec.describe Daitai::Map do
  it 'maps simple functions over arrays' do
    double = ->(x) { x * 2 }

    expect(Daitai.map.(double, [1, 2, 3])).to eql([2, 4, 6])
  end

  it 'maps over hashes' do
    dec = ->(x) { x - 1 }

    expect(Daitai.map.(dec, a: 3, b: 2)).to eql(a: 2, b: 1)
  end

  it 'maps over functions' do
    dec = ->(x) { x - 1 }
    double = ->(x) { x * 2 }
    double_and_dec = Daitai.map.(dec, double)

    expect(double_and_dec.(10)).to eql((10 * 2) - 1)
  end

  it 'is curried' do
    inc = ->(x) { x + 1 }
    increment = Daitai.map.(inc)

    expect(increment.([1, 2, 3])).to eql([2, 3, 4])
  end
end
