class CowsAndBulls 
    @key
    @attempts = 0
    @res = ""

    def insertKey(number)
        @key = number.to_i
        if(@key.to_s.length == 4)
            return true
        else
            return false
        end
    end
end