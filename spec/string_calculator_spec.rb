require_relative '../lib/string_calculator.rb'

describe StringCalculator do
    it "should return 0 for empty string" do
        expect(StringCalculator.calculate("")).to eq(0)
    end

    it "should return the number itself for a single number" do
        expect(StringCalculator.calculate("1")).to eq(1)
    end
end