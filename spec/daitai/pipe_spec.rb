# frozen_string_literal: true

RSpec.describe Daitai::Pipe do
  it 'composes functions from left to right' do
    add_two = ->(x) { x + 2 }
    square  = ->(x) { x * x }
    f = Daitai.pipe.(add_two, square)

    expect(f.(10)).to eql(144)
  end

  it 'is curried' do
    add_two = ->(x) { x + 2 }
    square  = ->(x) { x * x }
    add_two_and = Daitai.pipe.(add_two)

    expect(add_two_and.(square).(10)).to eql(144)
  end
end
