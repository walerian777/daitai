# frozen_string_literal: true

RSpec.describe Daitai::Flip do
  it 'reverses the order of first two arguments' do
    join = ->(x, y) { "#{x} #{y}" }
    flipped_join = Daitai.flip.(join)

    expect(flipped_join.('flip', 'flop')).to eql('flop flip')
  end

  it 'works for more than two arguments' do
    join_three = ->(x, y, z) { "#{x} #{y} #{z}" }
    flipped_join = Daitai.flip.(join_three)

    expect(flipped_join.('flip', 'flop', 'flap')).to eql('flop flip flap')
  end

  it 'works for splat arguments' do
    concat = ->(*arguments) { arguments.reduce(:+) }
    flipped_concat = Daitai.flip.(concat)

    expect(flipped_concat.('BY', 'RU')).to eql('RUBY')
    expect(flipped_concat.('CTIO', 'FUN', 'NAL')).to eql('FUNCTIONAL')
  end

  it 'is curried' do
    subtract = ->(x, y) { x - y }
    flipped_subtract = Daitai.flip.(subtract)
    curried_subtract = flipped_subtract.(4)

    expect(curried_subtract.(7)).to eql(3)
  end
end
