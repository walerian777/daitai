# frozen_string_literal: true

RSpec.describe Daitai::Inc do
  it 'returns the incremented value of a provided number' do
    expect(Daitai.inc.(-1)).to eql(0)
    expect(Daitai.inc.(0)).to eql(1)
    expect(Daitai.inc.(1)).to eql(2)
  end

  it 'works with floating-point numbers' do
    expect(Daitai.inc.(2.14)).to eql(3.14)
  end
end
