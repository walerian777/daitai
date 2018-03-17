# frozen_string_literal: true

RSpec.describe Daitai::Min do
  it 'returns the smaller of two arguments' do
    expect(Daitai.min.(6, 7)).to eql(6)
    expect(Daitai.min.(7, 6)).to eql(6)
  end

  it 'works for all comparable objects' do
    time1 = Time.new(2018, 1, 1)
    time2 = Time.new(2018, 1, 2)
    expect(Daitai.min.(time1, time2)).to eql(time1)
  end

  it 'is curried' do
    non_positive = Daitai.min.(0)
    expect(non_positive.(4)).to eql(0)
  end
end
