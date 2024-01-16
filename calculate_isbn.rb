class GenerateISBN
    def initialize(pin_number)
        @pin_number = pin_number.to_s
    end

    def multiply_and_sum_digit
        sum_digit = 0
        arr_digit = @pin_number.split("").map{ |digit| digit.to_i }
        arr_digit.each_with_index do |val, index|
            if index.odd?
                sum_digit += val * 3
            else
                sum_digit += val * 1
            end
        end
        sum_digit
    end

    def calculate_last_digit(sum_digit
        modulo = 10 - (sum_digit % 10)
        modulo == 10 ? 0 : modulo
    end

    def output
        @pin_number + calculate_last_digit(multiply_and_sum_digit).to_s
    end
end

puts GenerateISBN.new(978014300723).output
