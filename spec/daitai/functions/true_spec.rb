# frozen_string_literal: true

RSpec.describe Daitai::True do
  it 'returns a function which always returns the true' do
    expect(Daitai.true.()).to eql(true)
    expect(Daitai.true.(:xyz)).to eql(true)
    expect(Daitai.true.(1, 2)).to eql(true)
    expect(Daitai.true.(false)).to eql(true)
  end
end
