# frozen_string_literal: true

RSpec.describe Daitai::Max do
  it 'returns the larger of two arguments' do
    expect(Daitai.max.(6, 7)).to eql(7)
    expect(Daitai.max.(7, 6)).to eql(7)
  end

  it 'works for all comparable objects' do
    time1 = Time.new(2018, 1, 1)
    time2 = Time.new(2018, 1, 2)

    expect(Daitai.max.(time1, time2)).to eql(time2)
  end

  it 'is curried' do
    non_negative = Daitai.max.(0)

    expect(non_negative.(-4)).to eql(0)
  end
end
