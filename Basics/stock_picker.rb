def stock_picker(cost)
    # define variables that will store top prices and profit
    top_buy = nil.to_i
    top_sell = nil.to_i
    profit = 0 
    dates = [] # => array of the dates to be returned

    range = (0..(cost.length - 2)) # => create a range of elements leaving out the last one

    # loop over the range elements to get the buy_date

    range.each do |buy_date| 
        # get sell dates starting from buy_date 

        ((buy_date + 1)..cost.length - 1).each do |sell_date|
            diff = cost[sell_date] - cost[buy_date] # => calculate the profit for given buy and sell date
        # check if that is the best profit and save it
            if diff > profit 
                top_buy = buy_date
                top_sell = sell_date
                profit = diff
                dates = [buy_date,sell_date]
            end 
        end 

        puts "day #{top_buy}: buy at #{cost[top_buy]}"
        puts "day #{top_sell}: sell at #{cost[top_sell]}"
        puts "profit of #{profit}"
    end
        return dates;
end

