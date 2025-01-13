require_relative '../lib/string_calculator.rb'

describe StringCalculator do
    it "should return 0 for empty string" do
        expect(StringCalculator.calculate("")).to eq(0)
    end
end