# frozen_string_literal: true

RSpec.describe Daitai::Concat do
  context 'for String arguments' do
    before do
      @beginning = 'Szcz'
      @ending = 'ecin'
    end

    it 'concatenates two strings' do
      expect(Daitai.concat.(@beginning, @ending)).to eql('Szczecin')
    end

    it 'returns an empty string for empty strings' do
      expect(Daitai.concat.('', '')).to eql('')
    end

    it 'does not mutate the first argument' do
      expect do
        Daitai.concat.(@beginning, @ending)
      end.not_to(change { @beginning })
    end

    it 'does not mutate the second argument' do
      expect do
        Daitai.concat.(@beginning, @ending)
      end.not_to(change { @ending })
    end
  end

  context 'for Array arguments' do
    before do
      @beginning = [1, 2]
      @ending = [3, 4]
    end

    it 'concatenates two arrays' do
      expect(Daitai.concat.(@beginning, @ending)).to eql([1, 2, 3, 4])
    end

    it 'returns an empty array for empty arrays' do
      expect(Daitai.concat.([], [])).to eql([])
    end

    it 'does not mutate the first argument' do
      expect do
        Daitai.concat.(@beginning, @ending)
      end.not_to(change { @beginning })
    end

    it 'does not mutate the first argument' do
      expect do
        Daitai.concat.(@beginning, @ending)
      end.not_to(change { @ending })
    end
  end

  it 'is curried' do
    greet = Daitai.concat.('Hello, ')
    expect(greet.('Walerian')).to eql('Hello, Walerian')
  end
end
