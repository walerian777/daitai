# frozen_string_literal: true

RSpec.describe Daitai::Always do
  it 'returns a function that always returns the provided value' do
    always_blue = Daitai.always.('blue')

    expect(always_blue.()).to eql('blue')
    expect(always_blue.(7)).to eql('blue')
    expect(always_blue.(:x)).to eql('blue')
    expect(always_blue.(nil)).to eql('blue')
  end

  it 'works with numbers' do
    expect(Daitai.always.(7).()).to eql(7)
  end

  it 'works with symbols' do
    expect(Daitai.always.(:w).()).to eql(:w)
  end

  it 'works with nil' do
    expect(Daitai.always.(nil).()).to eql(nil)
  end

  it 'works with booleans' do
    expect(Daitai.always.(true).()).to eql(true)
  end

  it 'works with arrays' do
    expect(Daitai.always.([1, 2]).()).to eql([1, 2])
  end

  it 'works with hashes' do
    expect(Daitai.always.(x: 1, y: 2).()).to eql(x: 1, y: 2)
  end

  it 'works with more than one argument' do
    expect(Daitai.always.(7).(1, 2, 3)).to eql(7)
  end
end
