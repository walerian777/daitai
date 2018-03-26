# frozen_string_literal: true

RSpec.describe Daitai::Sort do
  it 'sorts an array' do
    expect(Daitai.sort.([3, 2, 7, 4])).to eql([2, 3, 4, 7])
  end

  it 'does not mutate the passed array' do
    list = [3, 2, 7, 4]
    Daitai.sort.(list)

    expect(list).to eql([3, 2, 7, 4])
  end
end
