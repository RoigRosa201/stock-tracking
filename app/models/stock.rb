class Stock < ApplicationRecord

    def self.new_from_lookup(ticker_symbol)
        begin
            looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
            price = strip_commas(looked_up_stock)
            new(name: looked_up_stock.name, ticker: looked_up_stock.symbol, last_price: price)
             
            return nil 
        end
    end
end
