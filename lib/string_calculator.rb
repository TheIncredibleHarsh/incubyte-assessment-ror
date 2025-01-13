class StringCalculator
    def self.calculate(numbers)
        return 0 if numbers.empty?
        
        if numbers.start_with?('//')
            delimiter = numbers[2]
            numbers = numbers[4..-1]
        else
            delimiter = ','
        end
        numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i).sum
    end
end