# Given an array with each element being the price of the stock,
# and they are ordered by time, earlier el represents the price at
# an earlier time.
# If you have one share to buy and to sell in that day
# return the max profit, always remember to check for edge cases.
# stock_prices = [10, 7, 5, 8, 11, 9] => 6
def get_max_profit(arr)
    raise 'need at least two variables to get a profit' if arr.length < 2
    # slow version: getting all the possible profit and return the max
    # i = 0
    # profits = []
    # while i < arr.length - 1
    #     j = i+ 1
    #     while j < arr.length 
    #         profits << [arr[j] - arr[i]]
    #         j+= 1
    #     end
    #     i+=1
    # end
    # profits.max   This Works, now try to optimize it from O(n!)

    # trying greedy
    min_buy = arr[0] # 10
    sell_price = arr[1] # 7
    max_profit = sell_price - min_buy # -3
    # stock_prices = [10, 7, 5, 8, 11, 9] => 6
    i = 2
    while i < arr.length
        current_price = arr[i] # 5 ; 8 ; 11; 9
        sell_price = [sell_price, current_price].max # 7 ; 8; 11; 11
         max_profit = [sell_price - min_buy, max_profit].max # 7-10= -3 ;8 - 5 = 3, 11-5 = 6, 6
         min_buy = [min_buy, current_price].min # 5,  (you want to check if the current price can be a
        # new sell_price before setting it to the new buy_price as you can't sell and buy using the same price)
        i +=1
    end
    max_profit #Time O(n) as it runs one loop, space O(3n) since we created 3 new variables
end

get_max_profit([10, 7, 5, 8, 11, 9] ) #6
get_max_profit([1])   # raise error
get_max_profit([4,2]) # -2
