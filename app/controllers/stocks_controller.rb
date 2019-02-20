class StocksController < ApplicationController
    
    def search
        Stock.new_from_lookup(params[:stock])
        render 'users/my_portfolio'
    end

end