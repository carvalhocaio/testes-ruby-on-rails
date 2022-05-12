require 'calculator'

describe Calculator do
  it 'use sum method for two numbers' do
    calc = Calculator.new
    result = calc.sum(5, 7)

    expect(result).to eq(12)
  end

  it 'use sum method for two negative numbers' do
    calc = Calculator.new
    result = calc.sum(-5, -7)

    expect(result).to eq(-12)
  end
end
