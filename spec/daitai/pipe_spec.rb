# frozen_string_literal: true

RSpec.describe Daitai::Pipe do
  before do
    @add_two = ->(x) { x + 2 }
    @square  = ->(x) { x * x }
  end

  it 'composes functions from left to right' do
    f = Daitai.pipe.(@add_two, @square)
    expect(f.(10)).to eql(144)
  end

  it 'is curried' do
    add_two_and = Daitai.pipe.(@add_two)
    expect(add_two_and.(@square).(10)).to eql(144)
  end
end
