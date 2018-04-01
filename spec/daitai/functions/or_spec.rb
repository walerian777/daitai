# frozen_string_literal: true

RSpec.describe Daitai::Or do
  it 'returns true when at least one of the arguments is true' do
    expect(Daitai.or.(true, false)).to eql(true)
    expect(Daitai.or.(false, true)).to eql(true)
    expect(Daitai.or.(true, true)).to eql(true)
  end

  it 'returns false when both arguments are false' do
    expect(Daitai.or.(false, false)).to eql(false)
  end

  it 'is curried' do
    true_or = Daitai.or.(true)

    expect(true_or.(false)).to eql(true)
  end
end
