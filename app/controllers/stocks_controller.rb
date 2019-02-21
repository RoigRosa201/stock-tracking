class StocksController < ApplicationController
    require 'stock_quote'
    
    def search
    if params[:stock].present?
     @stock_quote = StockQuote::Stock.raw_quote(params[:stock])

    end
    end
end
