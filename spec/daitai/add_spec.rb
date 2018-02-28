# frozen_string_literal: true

RSpec.describe Daitai::Add do
  it 'returns a sum of two arguments' do
    expect(Daitai.add.(2, 3)).to be(5)
  end

  it 'is curried' do
    increment = Daitai.add.(1)
    expect(increment.(6)).to be(7)
  end

  describe 'has properties of addition' do
    it 'is commutative' do
      a = 2
      b = 3

      left  = Daitai.add.(a, b)
      right = Daitai.add.(b, a)

      expect(left).to eql(right)
    end

    it 'is associative' do
      a = 2
      b = 3
      c = 4

      left  = Daitai.add.(Daitai.add.(a, b), c)
      right = Daitai.add.(a, Daitai.add.(b, c))

      expect(left).to eql(right)
    end

    it 'has the identity element' do
      IDENTITY_ELEMENT = 0
      a = 2

      left  = Daitai.add.(a, IDENTITY_ELEMENT)
      right = Daitai.add.(IDENTITY_ELEMENT, a)

      expect(left).to eql(right)
      expect(left).to eql(a)
      expect(right).to eql(a)
    end
  end
end
