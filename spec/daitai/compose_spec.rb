# frozen_string_literal: true

RSpec.describe Daitai::Compose do
  it 'composes functions from right to left' do
    add_two = ->(x) { x + 2 }
    square  = ->(x) { x * x }
    f = Daitai.compose.(square, add_two)

    expect(f.(10)).to eql(144)
  end

  it 'is curried' do
    add_two = ->(x) { x + 2 }
    square  = ->(x) { x * x }
    square_and = Daitai.compose.(square)

    expect(square_and.(add_two).(10)).to eql(144)
  end
end
