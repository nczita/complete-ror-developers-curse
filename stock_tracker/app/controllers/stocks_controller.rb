class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash_alert_and_back_to_my_portfolio 'Please provide a valid symbol to search'
      end
    else
      flash_alert_and_back_to_my_portfolio 'Please provide a symbol to search'
    end
  end

  private

  def flash_alert_and_back_to_my_portfolio(alert_message)
    flash[:alert] = alert_message
    redirect_to my_portfolio_path
  end
end
