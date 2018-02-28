# frozen_string_literal: true

RSpec.describe Daitai::And do
  it 'returns true when both arguments are true' do
    expect(Daitai.and.(true, true)).to be(true)
  end

  it 'returns false when at least one of the arguments is false' do
    expect(Daitai.and.(true, false)).to be(false)
  end

  it 'is curried' do
    true_and_x = Daitai.and.(true)
    expect(true_and_x.(true)).to be(true)
  end
end
