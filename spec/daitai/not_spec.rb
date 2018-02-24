RSpec.describe Daitai::Not do
  it 'returns true for false' do
    expect(Daitai.not.(false)).to be(true)
  end

  it 'returns true for a falsy argument' do
    expect(Daitai.not.(nil)).to be(true)
  end

  it 'returns false for true' do
    expect(Daitai.not.(true)).to be(false)
  end

  it 'returns false for a truthy argument' do
    expect(Daitai.not.(:hello)).to be(false)
  end
end
