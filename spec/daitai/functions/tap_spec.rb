# frozen_string_literal: true

RSpec.describe Daitai::Tap do
  it 'returns a function which always returns the provided argument' do
    function = ->(_) {}

    expect(Daitai.tap.(function, 7)).to eql(7)
  end

  it 'executes the provided function with the passed argument' do
    outer_scope = 1
    result = Daitai.tap.(->(x) { outer_scope += x }, 100)

    expect(result).to eql(100)
    expect(outer_scope).to eql(101)
  end

  it 'is curried' do
    log_and_return = Daitai.tap.(->(value) { puts "value = #{value}" })

    expect(log_and_return.(777)).to eql(777)
  end
end
