RSpec.describe Daitai::Modulo do
  it 'returns a quotient of two arguments' do
    expect(Daitai.modulo.(18, 4)).to be(2)
  end

  it 'is curried' do
    modulo18 = Daitai.modulo.(18)
    expect(modulo18.(4)).to be(2)
  end
end
