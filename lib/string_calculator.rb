class StringCalculator
    def self.calculate(numbers)
        return 0 if numbers.empty?
        
        if numbers.start_with?('//')
            delimiter = numbers[2]
            numbers = numbers[4..-1]
        else
            delimiter = ','
        end
        numbers = numbers.gsub("\n", delimiter)
        numbers_array = numbers.split(delimiter).map(&:to_i)

        negatives = numbers_array.select { |n| n < 0 }
        if negatives.any?
            raise ArgumentError,"Negative numbers are not allowed"
        end

        numbers_array.select{ |num| num <= 1000}.sum
    end
end