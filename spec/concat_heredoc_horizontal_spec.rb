# frozen_string_literal: true

RSpec.describe ConcatHeredocHorizontal do
  it "has a version number" do
    expect(ConcatHeredocHorizontal::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe '.concat_simple' do
    it "only one line" do
      result = ConcatHeredocHorizontal.concat_simple('Hello ', 'World')

      expect(result).to eq('Hello World')
    end

    it "more one line" do
      a = "Hello
      of "
      b = " World
      Ruby"
      c = "Hello World
      of       Ruby"

      result = ConcatHeredocHorizontal.concat_simple(a, b)

      expect(result).to eq(c)
    end
  end
end
