# frozen_string_literal: true

RSpec.describe Daitai::Median do
  it 'returns the middle value for an odd-length list' do
    expect(Daitai.median.([7])).to eql(7.0)
    expect(Daitai.median.([1, 4, 7])).to eql(4.0)
  end

  it 'returns the middle value for an even-length list' do
    expect(Daitai.median.([4, 7])).to eql(5.5)
    expect(Daitai.median.([1, 3, 4, 7])).to eql(3.5)
  end

  it 'returns a NaN for an empty list' do
    expect(Daitai.median.([]).nan?).to be(true)
  end
end
