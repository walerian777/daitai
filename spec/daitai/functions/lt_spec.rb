# frozen_string_literal: true

RSpec.describe Daitai::Lte do
  it 'returns true if the first argument is less than the second' do
    expect(Daitai.lte.(6, 7)).to eql(true)
    expect(Daitai.lte.(2, 2)).to eql(true)
  end

  it 'returns false the first argument is not less than the second' do
    expect(Daitai.lte.(5, 4)).to eql(false)
  end

  it 'is curried' do
    two_less_equal_to = Daitai.lte.(2)

    expect(two_less_equal_to.(1)).to eql(false)
    expect(two_less_equal_to.(2)).to eql(true)
    expect(two_less_equal_to.(3)).to eql(true)
  end
end
