RSpec.describe Daitai::Negate do
  it 'returns the negation of a positive number' do
    expect(Daitai.negate.(2)).to be(-2)
  end

  it 'returns the negation of a negative number' do
    expect(Daitai.negate.(-2)).to be(2)
  end
end
