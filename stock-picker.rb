
def stock_picker(stocks)

    final_buy_day = 0
    final_sell_day = 0
    price = 0
   

    stocks.each_index do |buy_day|
        # buy_price = stocks(stock)
        # sell_price = stocks(stock + 1)
        # price = sell_price - buy_price
        
        sell_day = buy_day + 1
        index = sell_day
        
        while index < stocks.length && stocks[index + 1] != nil
            if stocks[buy_day] < stocks[index]
                temp = stocks[index] - stocks[buy_day]
                puts "#{stocks[index]} - #{stocks[buy_day]} = #{stocks[index] - stocks[buy_day]}"

                if temp > price
                    price = temp
                    final_buy_day = buy_day
                    final_sell_day = index
                end

            end
            index += 1
        end
    end
    final_list = [final_buy_day, final_sell_day]
    print final_list
    puts ""
end








stocks = [45, 24, 35, 31, 40, 50, 11]

stock_picker(stocks)