class CowsAndBulls 
    @max_length_key
    @cows
    @bulls
    @type
    @key

    def randomNumber(level)
        random = ""
        i = 1
        cantidadDeDigitos = defineLvels(level).to_i
        number = rand(1..9)
        random = random + number.to_s
        while i < cantidadDeDigitos
            number = rand(1..9)
            isRepeated = false
            for y in (0..random.length)
                if(random[y] == number.to_s)
                    isRepeated = true
                end
            end
            if !isRepeated
                random = random + number.to_s
                i += 1 
            end
        end
        puts random
        return random
    end

    def changedNumbersToColors(number)
        case number.to_i
        when 1
            resp = 'r'
        when 2
            resp = 'a'
        when 3
            resp = 'v'
        when 4
            resp = 'b'
        when 5
            resp = 'n'
        when 6
            resp = 'c'
        when 7
            resp = 'm'
        when 8
            resp = 'd'
        when 9
            resp = 'p'
        end
        return resp
    end

    def colorsRandom(level)
        numberRand = randomNumber(level)
        puts numberRand.to_s
        colors = ""
        for i in (0..numberRand.length)
            colors = colors + changedNumbersToColors(numberRand.to_s[i]).to_s
        end
        return colors
    end

    def defineLvels(level)
        case level
        when "Facil"
            resp = 4
        when "Medio"
            resp = 6
        when "Alto"
            resp = 8
        end
        return resp
    end

    def configuration(key,type,max_length_key)
        resp = false
        @type = type.to_s
        @max_length_key = defineLvels(max_length_key).to_i - 1
        if (verifyData(key))
            @key = key.to_s
            @key = @key.downcase
            resp = true
        end
        return resp
    end

    def verifyQuantityOfDigits(number)
        resp = false
        if(number.to_s.length == @max_length_key + 1)
            resp = true
        end
        return resp
    end

    def isNumeric(obj) 
        obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
    end

    def verifyRepeatedCharacters(number)
        resp = true
        string  = number.to_s
        for i in (1..@max_length_key)
            if(string[i] == string[i - 1])
                resp = false 
            end
        end
        return resp
    end

    def verifyCharacterNumber(number)
        resp = false
        if(verifyQuantityOfDigits(number) && verifyRepeatedCharacters(number) && isNumeric(number))
            resp = true
        end
        return resp
    end

    def validColors(color)
        c = color.to_s.downcase
        resp = false
        if(c == 'r' || c == 'a' || c == 'v' || c == 'b' || c == 'n' || c == 'c' || c == 'm' || c == 'd' || c == 'p')
            resp = true
        end
        return resp
    end

    def verifyCharacterColor(colors)
        resp = false
        if(verifyQuantityOfDigits(colors) && verifyRepeatedCharacters(colors))
            i = 0
            resp = true
            while i <= @max_length_key
                if(!validColors(colors.to_s[i]))
                    resp = false
                    i = @max_length_key
                end 
                i += 1  
            end
        end
        return resp
    end

    def verifyData(input)
        if(@type == "colores")
            resp = verifyCharacterColor(input)
        elsif (@type == "numeros")
            resp = verifyCharacterNumber(input)
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
        when 4 
            word = 'cuatro'
        when 5 
            word = 'cinco'
        when 6
            word = 'seis'
        when 7 
            word = 'siete'
        else
            word = 'ocho'
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

    def countCowsAndBulls(currentDigit, previusDigit, position)
        coincidence = true
        y = 0
        while y <= @max_length_key
            if(currentDigit == @key.to_s[y])
                if(position == y)
                    @bulls += 1
                    y = @max_length_key
                else
                    @cows += 1
                end
            end
            y += 1
        end
    end

    def playCowsAndBulls(number)
        @cows = 0
        @bulls = 0
        message = ''
        if(verifyData(number))
            if(number.to_s.downcase == @key)
                return true
            else
                for i in (0..@max_length_key)
                    countCowsAndBulls(number.to_s[i],number.to_s[i - 1], i)
                end
            end
            message = createMessage(@cows,@bulls)
        else
            message = 'Numero Invalido'
        end
        return  message
    end
    
end