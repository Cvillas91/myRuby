class RomanNumerals

    def self.to_roman(num)
        m = Array.new
        c = Array.new
        x = Array.new
        i = Array.new
        m = ["", "M", "MM", "MMM"]
        c = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
        x = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
        i = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
        thousands = m[num.div(1000)]
        hundreds = c[(num % 1000).div(100)]
        tens = x[(num % 100).div(10)]
        ones = i[num % 10]
    
        ans = (thousands + hundreds + tens + ones)
  
        return ans
    end

    def self.from_roman(s)
        rom_val = Hash.new
        rom_val = {'I' => 1, 'V'=> 5, 'X'=> 10, 'L'=> 50, 'C'=> 100, 'D'=> 500, 'M'=> 1000}
        int_val = 0
        0.upto(s.length) do |i|
            if (i > 0) && (rom_val[s[i]].to_i > rom_val[s[i - 1]].to_i)
                int_val = int_val + rom_val[s[i]].to_i - 2 * rom_val[s[i - 1]].to_i
            else
                int_val = int_val + rom_val[s[i]].to_i
            end
        end

        return int_val
    end

end

puts RomanNumerals.from_roman("MI")
