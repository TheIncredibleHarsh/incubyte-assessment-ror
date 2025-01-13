require_relative 'lib/string_calculator.rb'

def get_input
    all_text = ""
    while (text = gets) != "\n"
        all_text << text
    end
    all_text
end

all_text = get_input
puts StringCalculator.calculate(all_text)