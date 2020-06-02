class CowsAndBulls 
    @key
    $attempts = 0
    @res = ""
    $max_length_key = 3

    def insertKey(number)
        @key = number.to_i
        if(@key.to_s.length == $max_length_key + 1)
            return true
        else
            return false
        end
    end

    def playCowsAndBulls(number)
        cows = 0
        bulls = 0
        $attempts += 1
        if(number == @key)
            return true
        else
            for i in (0..$max_length_key)
                y = 0
                while y <= $max_length_key
                    if(number.to_s[i] == @key.to_s[y])
                        if(i == y)
                            bulls += 1
                            y = $max_length_key
                        end
                    end
                    y += 1
                end
            end
        end
        return [cows,bulls]
    end
    
end