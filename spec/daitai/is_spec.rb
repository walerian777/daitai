# frozen_string_literal: true

RSpec.describe Daitai::Is do
  it 'checks if a provided object is an instance of provided type' do
    expect(Daitai.is.(Array, [])).to be(true)
    expect(Daitai.is.(Hash, {})).to be(true)
    expect(Daitai.is.(FalseClass, false)).to be(true)
    expect(Daitai.is.(Time, Time.now)).to be(true)
    expect(Daitai.is.(Proc, -> {})).to be(true)
    expect(Daitai.is.(Numeric, 7)).to be(true)
    expect(Daitai.is.(Regexp, /lambda/)).to be(true)
    expect(Daitai.is.(String, 'Ruby')).to be(true)
    expect(Daitai.is.(Module, Daitai)).to be(true)
    expect(Daitai.is.(Object, Class.new)).to be(true)
  end

  it 'works with custom types' do
    Parent = Class.new
    Child = Class.new(Parent)

    parent = Parent.new
    child = Child.new

    expect(Daitai.is.(Parent, parent)).to be(true)
    expect(Daitai.is.(Child, parent)).to be(false)

    expect(Daitai.is.(Parent, child)).to be(true)
    expect(Daitai.is.(Child, child)).to be(true)
  end

  it 'is curried' do
    is_array = Daitai.is.(Array)

    expect(is_array.([0, 5, 10])).to be(true)
    expect(is_array.(x: 1, y: 2)).to be(false)
  end
end
