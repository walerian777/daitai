# frozen_string_literal: true

RSpec.describe Daitai::Once do
  it 'returns a function which calls a passed function only once' do
    decrement = ->(x) { x - 1 }
    decrement_once = Daitai.once.(decrement)

    expect(decrement_once.(8)).to eql(7)
    expect(decrement_once.(40)).to eql(7)
    expect(decrement_once.(decrement_once.(8))).to eql(7)
  end

  it 'works for functions with multiple arguments' do
    add_once = Daitai.once.(->(a, b, c) { a + b + c })
    expect(add_once.(6, 7, 8)).to eql(21)
  end
end
