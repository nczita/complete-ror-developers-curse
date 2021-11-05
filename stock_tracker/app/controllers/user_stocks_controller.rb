class UserStocksController < ApplicationController
  def create
    stock = Stock.find_by(ticker: params[:ticker]) || Stock.new_lookup(params[:ticker])
    stock.save
    @user_stock = UserStock.create(user: current_user, stock: stock)
    flash[:notice] = "Stock #{stock.name} was added to your portfolio"
    redirect_to my_portfolio_path
  end

  def destroy
    UserStock.find_by(user: current_user, stock_id: params[:id]).delete
    flash[:notice] = 'Stock was removed from your portfolio'
    redirect_to my_portfolio_path
  end
end
