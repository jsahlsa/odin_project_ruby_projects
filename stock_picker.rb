stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(stocks)
    best_return = 0;
    best_days = []
    length = stocks.length - 1
    inside_start = length - 1
    length.downto(0) do |numx|
        inside_start.downto(0) do |numy|
            amount = stocks[numx] - stocks[numy]
            p "#{stocks[numx]} - #{stocks[numy]} = #{amount}"
            if amount > best_return
                best_return = amount
                best_days = [numy, numx]
            end
        end
        inside_start -= 1
    end
    best_days
end

stock_picker(stocks)