# frozen_string_literal: true

RSpec.describe Daitai::Dec do
  it 'returns the decremented value of a provided number' do
    expect(Daitai.dec.(1)).to eql(0)
    expect(Daitai.dec.(0)).to eql(-1)
    expect(Daitai.dec.(-1)).to eql(-2)
  end

  it 'works with floating-point numbers' do
    expect(Daitai.dec.(3.14)).to eql(2.14)
  end
end
