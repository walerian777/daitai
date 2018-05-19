# frozen_string_literal: false

RSpec.describe Daitai::False do
  it 'returns a function which always returns the false' do
    expect(Daitai.false.()).to eql(false)
    expect(Daitai.false.(:xyz)).to eql(false)
    expect(Daitai.false.(1, 2)).to eql(false)
    expect(Daitai.false.(true)).to eql(false)
  end
end
