# frozen_string_literal: true

RSpec.describe Daitai::Identity do
  it 'returns the provided argument' do
    expect(Daitai.identity.(1)).to eql(1)
    expect(Daitai.identity.('Ruby')).to eql('Ruby')
    expect(Daitai.identity.(a: 1, b: 2)).to eql(a: 1, b: 2)
  end

  it 'accepts only one argument' do
    expect(Daitai.identity.arity).to eql(1)
  end
end
