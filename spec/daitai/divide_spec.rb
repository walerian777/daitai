# frozen_string_literal: true

RSpec.describe Daitai::Divide do
  it 'returns a quotient of two arguments' do
    expect(Daitai.divide.(18, 3)).to eql(6)
  end

  it 'is curried' do
    divide18 = Daitai.divide.(18)

    expect(divide18.(3)).to eql(6)
  end
end
