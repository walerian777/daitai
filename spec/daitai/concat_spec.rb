# frozen_string_literal: true

RSpec.describe Daitai::Concat do
  it 'concatenates two arrays' do
    expect(Daitai.concat.([1, 2], [3, 4])).to eql([1, 2, 3, 4])
  end

  it 'concatenates two strings' do
    expect(Daitai.concat.('Szcz', 'ecin')).to eql('Szczecin')
  end

  it 'returns an empty list for empty lists' do
    expect(Daitai.concat.([], [])).to eql([])
  end

  it 'returns an empty string for empty strings' do
    expect(Daitai.concat.('', '')).to eql('')
  end

  it 'is curried' do
    greet = Daitai.concat.('Hello, ')
    expect(greet.('Walerian')).to eql('Hello, Walerian')
  end
end
