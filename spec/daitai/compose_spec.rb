# frozen_string_literal: true

RSpec.describe Daitai::Compose do
  before do
    @to_int   = ->(x) { x.to_i }
    @plus_two = ->(x) { x + 2 }
    @square   = ->(x) { x * x }
  end

  it 'composes functions from right to left' do
    f = Daitai.compose.(@square, @plus_two, @to_int)
    expect(f.('10')).to eql(144)
  end
end
