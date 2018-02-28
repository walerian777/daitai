# frozen_string_literal: true

RSpec.describe Daitai::Pipe do
  before do
    @to_int   = ->(x) { x.to_i }
    @plus_two = ->(x) { x + 2 }
    @square   = ->(x) { x * x }
  end

  it 'composes functions from left to right' do
    f = Daitai.pipe.(@to_int, @plus_two, @square)
    expect(f.('10')).to eql(144)
  end
end
