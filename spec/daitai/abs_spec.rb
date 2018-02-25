RSpec.describe Daitai::Abs do
  it 'returns the absolute value of a positive number' do
    expect(Daitai.abs.(2)).to be(2)
  end

  it 'returns the absolute value of a negative number' do
    expect(Daitai.abs.(-2)).to be(2)
  end

  it 'returns the absolute value of a zero' do
    expect(Daitai.abs.(0)).to be(0)
  end
end
