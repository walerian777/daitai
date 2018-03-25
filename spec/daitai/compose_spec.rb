# frozen_string_literal: true

RSpec.describe Daitai::Compose do
  before do
    @add_two = ->(x) { x + 2 }
    @square  = ->(x) { x * x }
  end

  it 'composes functions from right to left' do
    f = Daitai.compose.(@square, @add_two)
    expect(f.(10)).to eql(144)
  end

  it 'is curried' do
    square_and = Daitai.compose.(@square)
    expect(square_and.(@add_two).(10)).to eql(144)
  end
end
