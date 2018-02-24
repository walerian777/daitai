RSpec.describe Daitai::Or do
  it 'returns true when at least one of the arguments is true' do
    expect(Daitai.or.(true, false)).to be(true)
  end

  it 'returns false when both arguments are false' do
    expect(Daitai.or.(false, false)).to be(false)
  end

  it 'is curried' do
    true_or_x = Daitai.or.(true)
    expect(true_or_x.(false)).to be(true)
  end
end