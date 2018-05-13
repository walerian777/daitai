# frozen_string_literal: true

RSpec.describe Daitai::Cond do
  it 'returns a conditional function' do
    function = Daitai.cond.(
      [->(x) { x > 0 }, ->(_) { :positive }],
      [->(x) { x < 0 }, ->(_) { :negative }],
      [->(x) { x == 0 }, ->(_) { :zero }]
    )

    expect(function.(11)).to eql(:positive)
    expect(function.(-7)).to eql(:negative)
    expect(function.(0)).to eql(:zero)
  end

  it 'returns nil if there is no matching predicate' do
    function = Daitai.cond.(
      [Daitai.is.(String), Daitai.always.(100)],
      [Daitai.is.(Symbol), Daitai.always.(200)]
    )

    expect(function.(3.14)).to eql(nil)
  end

  it 'passes all arguments to transformers' do
    function = Daitai.cond.(
      [Daitai.always.(true), ->(x, y, z) { x * y * z }]
    )

    expect(function.(2, 3, 4)).to eql(24)
  end

  it 'checks predicates in order' do
    function = Daitai.cond.(
      [Daitai.is_nil, Daitai.always.('first')],
      [Daitai.is_nil, Daitai.always.('second')],
      [Daitai.is_nil, Daitai.always.('third')]
    )

    expect(function.(nil)).to eql('first')
  end
end
