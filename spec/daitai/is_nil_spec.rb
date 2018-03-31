# frozen_string_literal: true

RSpec.describe Daitai::IsNil do
  it 'checks if a provided value is a nil' do
    expect(Daitai.is_nil.(nil)).to be(true)
    expect(Daitai.is_nil.([])).to be(false)
    expect(Daitai.is_nil.({})).to be(false)
    expect(Daitai.is_nil.(0)).to be(false)
    expect(Daitai.is_nil.('')).to be(false)
    expect(Daitai.is_nil.(//)).to be(false)
    expect(Daitai.is_nil.(false)).to be(false)
  end
end
