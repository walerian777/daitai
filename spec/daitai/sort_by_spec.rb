# frozen_string_literal: true

RSpec.describe Daitai::SortBy do
  let(:apple)  { { colour: 'red',    weight: 136 } }
  let(:banana) { { colour: 'yellow', weight: 118 } }
  let(:pear)   { { colour: 'green',  weight: 178 } }

  before do
    @property = :weight
    @fruits = [apple, banana, pear]
  end

  context 'for an array of Hashes' do
    it 'sorts an array by the provided property' do
      expect(Daitai.sort_by.(@property, @fruits)).to eql([banana, apple, pear])
    end

    it 'does not mutate the passed array' do
      expect do
        Daitai.sort_by.(@property, @fruits)
      end.not_to(change { @fruits })
    end
  end

  context 'for an array of Objects' do
    class Fruit
      attr_reader :colour, :weight

      def initialize(colour:, weight:)
        @colour = colour
        @weight = weight
      end
    end

    let(:apple)  { Fruit.new(colour: 'red',    weight: 136) }
    let(:banana) { Fruit.new(colour: 'yellow', weight: 118) }
    let(:pear)   { Fruit.new(colour: 'green',  weight: 178) }

    it 'sorts an array by the provided property' do
      expect(Daitai.sort_by.(@property, @fruits)).to eql([banana, apple, pear])
    end

    it 'does not mutate the passed array' do
      expect do
        Daitai.sort_by.(@property, @fruits)
      end.not_to(change { @fruits })
    end
  end

  it 'is curried' do
    sort_by_length = Daitai.sort_by.(:length)
    expect(sort_by_length.(%w[haskell ruby elixir])).to eql(%w[ruby elixir haskell])
  end
end
