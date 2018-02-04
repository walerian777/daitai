RSpec.describe Daitai::Sort do
  before do
    @diff = ->(x, y) { x - y }
  end

  it 'sorts an array' do
    expect(Daitai.sort.(@diff, [3, 2, 7, 4])).to eql([2, 3, 4, 7])
  end

  it 'does not mutate the passed array' do
    list = [3, 2, 7, 4]
    Daitai.sort.(@diff, list)
    expect(list).to eql([3, 2, 7, 4])
  end

  it 'is curried' do
    sort_by_length = Daitai.sort.(->(x, y) { x.length - y.length })
    expect(sort_by_length.(%w[haskell ruby elixir])).to eql(%w[ruby elixir haskell])
  end
end
