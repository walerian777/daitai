# frozen_string_literal: true

RSpec.describe Daitai::Gt do
  it 'returns true if the first argument is greater than the second' do
    expect(Daitai.gt.(7, 6)).to eql(true)
  end

  it 'returns false the first argument is not greater than the second' do
    expect(Daitai.gt.(2, 2)).to eql(false)
    expect(Daitai.gt.(4, 5)).to eql(false)
  end

  it 'is curried' do
    two_greater_than = Daitai.gt.(2)

    expect(two_greater_than.(1)).to eql(true)
    expect(two_greater_than.(2)).to eql(false)
    expect(two_greater_than.(3)).to eql(false)
  end
end
