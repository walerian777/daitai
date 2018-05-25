# frozen_string_literal: true

RSpec.describe Daitai::Gte do
  it 'returns true if the first argument is greater or equal to the second' do
    expect(Daitai.gte.(7, 6)).to eql(true)
    expect(Daitai.gte.(2, 2)).to eql(true)
  end

  it 'returns false the first argument is not greater or equal to the second' do
    expect(Daitai.gte.(4, 5)).to eql(false)
  end

  it 'is curried' do
    two_greater_equal_to = Daitai.gte.(2)

    expect(two_greater_equal_to.(1)).to eql(true)
    expect(two_greater_equal_to.(2)).to eql(true)
    expect(two_greater_equal_to.(3)).to eql(false)
  end
end
