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
        end
    end
    
end