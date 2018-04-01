# frozen_string_literal: true

RSpec.describe Daitai::Xor do
  it 'returns true when only one of the arguments is true' do
    expect(Daitai.xor.(true, false)).to eql(true)
    expect(Daitai.xor.(false, true)).to eql(true)
  end

  it 'returns false when both arguments are false' do
    expect(Daitai.xor.(false, false)).to eql(false)
  end

  it 'returns false when both arguments are true' do
    expect(Daitai.xor.(true, true)).to eql(false)
  end

  it 'is curried' do
    true_xor = Daitai.xor.(true)

    expect(true_xor.(false)).to eql(true)
  end
end
