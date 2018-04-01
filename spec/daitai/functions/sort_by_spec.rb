# frozen_string_literal: true

RSpec.describe Daitai::SortBy do
  context 'for an array of Hashes' do
    it 'sorts an array by the provided property' do
      apple  = { colour: 'red',    weight: 136 }
      banana = { colour: 'yellow', weight: 118 }
      pear   = { colour: 'green',  weight: 179 }

      expect(Daitai.sort_by.(:weight, [apple, banana, pear])).to eql([banana, apple, pear])
    end

    it 'does not mutate the passed array' do
      apple  = { colour: 'red',    weight: 136 }
      banana = { colour: 'yellow', weight: 118 }
      pear   = { colour: 'green',  weight: 179 }
      fruits = [apple, banana, pear]

      expect { Daitai.sort_by.(:weight, fruits) }.not_to(change { fruits })
    end
  end

  context 'for an array of Objects' do
    it 'sorts an array by the provided property' do
      apple  = double(:fruit, colour: 'red',    weight: 136)
      banana = double(:fruit, colour: 'yellow', weight: 118)
      pear   = double(:fruit, colour: 'green',  weight: 178)

      expect(Daitai.sort_by.(:weight, [apple, banana, pear])).to eql([banana, apple, pear])
    end

    it 'does not mutate the passed array' do
      apple  = double(:fruit, colour: 'red',    weight: 136)
      banana = double(:fruit, colour: 'yellow', weight: 118)
      pear   = double(:fruit, colour: 'green',  weight: 178)
      fruits = [apple, banana, pear]

      expect { Daitai.sort_by.(:weight, fruits) }.not_to(change { fruits })
    end
  end

  it 'is curried' do
    sort_by_length = Daitai.sort_by.(:length)
    expect(sort_by_length.(%w[haskell ruby elixir])).to eql(%w[ruby elixir haskell])
  end
end
