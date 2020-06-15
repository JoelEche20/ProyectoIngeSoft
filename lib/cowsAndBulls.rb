class CowsAndBulls 
    $max_length_key = 3
    @cows
    @bulls

    def verifyQuantityOfDigits(number)
        resp = false
        if(number.to_s.length == $max_length_key + 1)
            resp = true
        end
        return resp
    end

    def verifyCharacters(number)
        resp = true
        string  = number.to_s
        for i in (1..$max_length_key)
            if(string[i] == string[i - 1])
                resp = false 
            end
        end
        return resp
    end

    def verifyData(number)
        resp = false
        if(verifyQuantityOfDigits(number) && verifyCharacters(number))
            resp = true
        end
        return resp
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

    def createMessage(cows,bulls)
        res = ''
        nameCow = ''
        nameBull = ''
        cowsLiteral = changeNumberToLiteral(cows)
        bullsLiteral = changeNumberToLiteral(bulls)
        if(cowsLiteral == 'un')
            cowsLiteral = 'una'
            nameCow = 'vaca'
        else
            nameCow = 'vacas'
        end
        if(bullsLiteral == 'un')
            nameBull = 'toro'
        else
            nameBull = 'toros'
        end
        if(cowsLiteral != 'cero' && bullsLiteral != 'cero')
            res = cowsLiteral + ' ' + nameCow + ' y ' + bullsLiteral + ' ' + nameBull
        elsif(cowsLiteral == 'cero' && bullsLiteral == 'cero')
            res = "Sin coincidencias"
        elsif(cowsLiteral == 'cero')
            res = bullsLiteral + ' ' + nameBull
        elsif(bullsLiteral == 'cero')
            res = cowsLiteral + ' ' + nameCow
        end
        return res
    end

    def countCowsAndBulls(currentDigit, key, previusDigit, position)
        coincidence = true
        y = 0
        while y <= $max_length_key
            if(currentDigit == key.to_s[y])
                if(position == y)
                    @bulls += 1
                    y = $max_length_key
                else
                    @cows += 1
                end
            end
            y += 1
        end
    end

    def playCowsAndBulls(number,key)
        @cows = 0
        @bulls = 0
        message = ''
        if(verifyData(number))
            if(number == key)
                return true
            else
                for i in (0..$max_length_key)
                    countCowsAndBulls(number.to_s[i], key,number.to_s[i - 1], i)
                end
            end
            message = createMessage(@cows,@bulls)
        else
            message = 'Numero Invalido'
        end
        return  message
    end
    
end