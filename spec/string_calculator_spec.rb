require_relative '../lib/string_calculator.rb'

describe StringCalculator do
    it "should return 0 for empty string" do
        expect(StringCalculator.calculate("")).to eq(0)
    end

    it "should return the number itself for a single number" do
        expect(StringCalculator.calculate("1")).to eq(1)
    end

    it "should return the sum for multiple numbers" do
        expect(StringCalculator.calculate("1,2,3")).to eq(6)
        expect(StringCalculator.calculate("1,2,3,4")).to eq(10)
    end

    it "should return the sum even if there are new lines" do
        expect(StringCalculator.calculate("1\n2,3")).to eq(6)
    end

    it "should support different delimiters" do
        expect(StringCalculator.calculate("//;\n1;2;3")).to eq(6)
        expect(StringCalculator.calculate("//.\n1\n2.3")).to eq(6)
    end

    it "throw error if the string has negative numbers" do
        expect { StringCalculator.calculate("-1") }.to raise_error("Negative numbers are not allowed [-1]")
        expect { StringCalculator.calculate("//.\n1.-2.3") }.to raise_error("Negative numbers are not allowed [-2]")
    end

    it "should ignore numbers more than 1000" do
        expect(StringCalculator.calculate("1001,1002,4")).to eq(4)
    end
end