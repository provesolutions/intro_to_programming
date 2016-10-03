

def fiw(figure)

    dash = '-'
    join = ' AND '
    separator = ', '
    negative = 'NEGATIVE '
    string_value = nil
    abs_value_figure = figure.to_i.abs

    

    number_dictionary = {
        0 => 'ZERO',
        1 => 'ONE',
        2 => 'TWO',
        3 => 'THREE',
        4 => 'FOUR',
        5 => 'FIVE',
        6 => 'SIX',
        7 => 'SEVEN',
        8 => 'EIGHT',
        9 => 'NINE',
        10 => 'TEN',
        11 => 'ELEVEN',
        12 => 'TWELVE',
        13 => 'THIRTEEN',
        14 => 'FOURTEEN',
        15 => 'FIFTEEN',
        16 => 'SIXTEEN',
        17 => 'SEVENTEEN',
        18 => 'EIGHTEEN',
        19 => 'NINETEEN',
        20 => 'TWENTY',
        30 => 'THIRTY',
        40 => 'FORTY',
        50 => 'FIFTY',
        60 => 'SIXTY',
        70 => 'SEVENTY',
        80 => 'EIGHTY',
        90 => 'NINETY',
        100 => 'HUNDRED',
        1000 => 'THOUSAND',
        1000000 => 'MILLION',
        1000000000 => 'BILLION'
    }

    if figure.class == 'string'
        return 'Please enter a numeric value'
    end

    if figure.to_i < 0
        return negative + fiw(abs_value_figure)
    else 
        case true
            when figure < 21
                string_value = number_dictionary[figure]
            
            when figure < 100
                tens = (figure / 10) * 10
                units = figure % 10
                string_value = number_dictionary[tens]
                if units > 0
                    #if units == 0
                        #string_value = string_value
                   # else
                        string_value = string_value + dash + number_dictionary[units]
                    #end
                end
            when figure < 1000
                hundreds = figure / 100
                remainder = figure % 100
                string_value = number_dictionary[hundreds] + ' ' + number_dictionary[100]
                if remainder > 0
                    string_value = string_value + join + fiw(remainder)
                end
            else
                base_unit = (1000**Math.log(figure, 1000).floor)
                number_base_units = (figure / base_unit).to_i
                remainder =  figure % base_unit
                string_value = fiw(number_base_units) + ' ' + number_dictionary[base_unit]
                if remainder > 0
                    string_value += remainder < 100? join : separator
                    string_value += fiw(remainder)
                end
        end 
    end


    return string_value

end

puts '300'.class

puts fiw '3000'