# frozen_string_literal: true

RSpec.describe Daitai::Lt do
  it 'returns true if the first argument is less than the second' do
    expect(Daitai.lt.(6, 7)).to eql(true)
  end

  it 'returns false the first argument is not less than the second' do
    expect(Daitai.lt.(2, 2)).to eql(false)
    expect(Daitai.lt.(5, 4)).to eql(false)
  end

  it 'is curried' do
    two_less_than = Daitai.lt.(2)

    expect(two_less_than.(1)).to eql(false)
    expect(two_less_than.(2)).to eql(false)
    expect(two_less_than.(3)).to eql(true)
  end
end
