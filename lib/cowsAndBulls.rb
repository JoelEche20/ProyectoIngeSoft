class CowsAndBulls 
    @key
    $attempts = 0
    $max_length_key = 3

    def insertKey(number)
        @key = number.to_i
        if(@key.to_s.length == $max_length_key + 1)
            return true
        else
            return false
        end
    end

    def changeNumberToLiteral(number)
        word = ''
        case number.to_i
        when 0
            word = 'cero'
        when 1
            word = 'un'
        when 2
            word = 'dos'
        when 3 
            word = 'tres'
        else
            word = 'cuatro'
        end
        return word
    end

    def playCowsAndBulls(number)
        cows = 0
        bulls = 0
        $attempts += 1
        if(number == @key)
            return true
        else
            for i in (0..$max_length_key)
                coincidence = true
                y = 0
                while y <= $max_length_key
                    if(number.to_s[i] == @key.to_s[y])
                        if(i == y)
                            bulls += 1
                            if(!coincidence)
                                cows -= 1
                            end
                            y = $max_length_key
                        else
                            if(coincidence && (i > 0 && (number.to_s[i] != number.to_s[i - 1])))
                                cows += 1
                                coincidence = false
                            end
                        end
                    end
                    y += 1
                end
            end
        end
        cowsLiteral = changeNumberToLiteral(cows)
        bullsLiteral = changeNumberToLiteral(bulls)
        return [cowsLiteral,bullsLiteral]
    end
    
end