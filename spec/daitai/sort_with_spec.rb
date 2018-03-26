# frozen_string_literal: true

RSpec.describe Daitai::SortWith do
  it 'sorts an array with the provided function' do
    diff = ->(x, y) { x - y }

    expect(Daitai.sort_with.(diff, [3, 2, 7, 4])).to eql([2, 3, 4, 7])
  end

  it 'does not mutate the passed array' do
    diff = ->(x, y) { x - y }
    list = [3, 2, 7, 4]
    Daitai.sort_with.(diff, list)

    expect { list }.not_to(change { list })
  end

  it 'is curried' do
    sort_by_length = Daitai.sort_with.(->(x, y) { x.length - y.length })

    expect(sort_by_length.(%w[haskell ruby elixir])).to eql(%w[ruby elixir haskell])
  end
end
