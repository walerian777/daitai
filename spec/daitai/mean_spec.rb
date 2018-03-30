# frozen_string_literal: true

RSpec.describe Daitai::Mean do
  it 'returns the mean of a non-empty list' do
    expect(Daitai.mean.([7])).to eql(7.0)
    expect(Daitai.mean.([4, 7])).to eql(5.5)
    expect(Daitai.mean.([1, 4, 7])).to eql(4.0)
    expect(Daitai.mean.([1, 3, 4, 7])).to eql(3.75)
  end

  it 'returns a NaN for an empty list' do
    expect(Daitai.mean.([]).nan?).to be(true)
  end
end
