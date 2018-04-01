# frozen_string_literal: true

RSpec.describe Daitai::Not do
  it 'returns true for false' do
    expect(Daitai.not.(false)).to eql(true)
  end

  it 'returns true for a falsy argument' do
    expect(Daitai.not.(nil)).to eql(true)
  end

  it 'returns false for true' do
    expect(Daitai.not.(true)).to eql(false)
  end

  it 'returns false for a truthy argument' do
    expect(Daitai.not.(:hello)).to eql(false)
  end
end
