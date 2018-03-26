# frozen_string_literal: true

RSpec.describe Daitai::Concat do
  it 'concatenates two strings' do
    expect(Daitai.concat.('Szcz', 'ecin')).to eql('Szczecin')
  end

  it 'returns an empty string for empty strings' do
    expect(Daitai.concat.('', '')).to eql('')
  end

  it 'does not mutate the String arguments' do
    prefix = 'Szcz'
    suffix = 'ecin'

    expect { Daitai.concat.(prefix, suffix) }.not_to(change { prefix })
    expect { Daitai.concat.(prefix, suffix) }.not_to(change { suffix })
  end

  it 'concatenates two arrays' do
    expect(Daitai.concat.([1, 2], [3, 4])).to eql([1, 2, 3, 4])
  end

  it 'returns an empty array for empty arrays' do
    expect(Daitai.concat.([], [])).to eql([])
  end

  it 'does not mutate the Array arguments' do
    head = [1, 2]
    tail = [3, 4]

    expect { Daitai.concat.(head, tail) }.not_to(change { head })
    expect { Daitai.concat.(head, tail) }.not_to(change { tail })
  end

  it 'is curried' do
    greet = Daitai.concat.('Hello, ')
    expect(greet.('Walerian')).to eql('Hello, Walerian')
  end
end
