# frozen_string_literal: true

RSpec.describe Daitai::Equals do
  it 'returns true if both arguments are equal' do
    expect(Daitai.equals.(7, 7)).to eql(true)
  end

  it 'returns false if arguments are different' do
    expect(Daitai.equals.(4, 5)).to eql(false)
  end

  it 'is curried' do
    equals_two = Daitai.equals.(2)

    expect(equals_two.(2)).to eql(true)
    expect(equals_two.(3)).to eql(false)
  end
end
