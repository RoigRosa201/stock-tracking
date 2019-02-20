class StocksController < ApplicationController
    
    def search
    if params[:stock].present?
        Stock.new_from_lookup(params[:stock])
        if @stock
        render 'users/my_portfolio'
        else
    
        flash[:danger] = "you have entered an incorrect stock symbol"
        redirect_to my_portfolio_path
        end

    else
        flash[:danger] = "you have entered and improper searching string"
        redirect_to my_portfolio_path
    end
    end

end