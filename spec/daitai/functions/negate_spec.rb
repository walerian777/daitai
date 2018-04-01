# frozen_string_literal: true

RSpec.describe Daitai::Negate do
  it 'returns the negation of a positive number' do
    expect(Daitai.negate.(2)).to eql(-2)
  end

  it 'returns the negation of a negative number' do
    expect(Daitai.negate.(-2)).to eql(2)
  end

  it 'returns zero for zero' do
    expect(Daitai.negate.(0)).to eql(0)
  end
end
