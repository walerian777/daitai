RSpec.describe Daitai::Multiply do
  it 'returns a product of two arguments' do
    expect(Daitai.multiply.(2, 3)).to be(6)
  end

  it 'is curried' do
    triple = Daitai.multiply.(3)
    expect(triple.(6)).to be(18)
  end

  describe 'has properties of multiplication' do
    it 'is commutative' do
      a = 2
      b = 3

      left  = Daitai.multiply.(a, b)
      right = Daitai.multiply.(b, a)

      expect(left).to eql(right)
    end

    it 'is associative' do
      a = 2
      b = 3
      c = 4

      left  = Daitai.multiply.(Daitai.multiply.(a, b), c)
      right = Daitai.multiply.(a, Daitai.multiply.(b, c))

      expect(left).to eql(right)
    end

    it 'has the identity element' do
      IDENTITY_ELEMENT = 1
      a = 2

      left  = Daitai.multiply.(a, IDENTITY_ELEMENT)
      right = Daitai.multiply.(IDENTITY_ELEMENT, a)

      expect(left).to eql(right)
      expect(left).to eql(a)
      expect(right).to eql(a)
    end

    it 'is distributive' do
      a = 2
      b = 3
      c = 4

      left  = Daitai.multiply.(a, Daitai.add.(b, c))
      right = Daitai.add.(Daitai.multiply.(a, b), Daitai.multiply.(a, c))

      expect(left).to eql(right)
    end

    it 'has property of zero' do
      ZERO = 0
      a = 2

      expect(Daitai.multiply.(a, ZERO)).to eql(ZERO)
    end
  end
end
