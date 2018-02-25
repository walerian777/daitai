RSpec.describe Daitai::Subtract do
  it 'returns a difference of two arguments' do
    expect(Daitai.subtract.(5, 3)).to be(2)
  end

  it 'is curried' do
    eight_minus = Daitai.subtract.(8)
    expect(eight_minus.(1)).to be(7)
  end
end
