# frozen_string_literal: true

RSpec.describe Daitai::Signum do
  it 'returns the sign of a positive number' do
    expect(Daitai.signum.(2)).to eql(1)
  end

  it 'returns the sign of a negative number' do
    expect(Daitai.signum.(-2)).to eql(-1)
  end

  it 'returns the sign of a zero' do
    expect(Daitai.signum.(0)).to eql(0)
  end
end
