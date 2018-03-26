# frozen_string_literal: true

RSpec.describe Daitai::And do
  it 'returns true when both arguments are true' do
    expect(Daitai.and.(true, true)).to eql(true)
  end

  it 'returns false when at least one of the arguments is false' do
    expect(Daitai.and.(true, false)).to eql(false)
    expect(Daitai.and.(false, true)).to eql(false)
    expect(Daitai.and.(false, false)).to eql(false)
  end

  it 'is curried' do
    true_and = Daitai.and.(true)

    expect(true_and.(true)).to eql(true)
  end
end
