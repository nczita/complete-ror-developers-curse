class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_with_stock_as_json
      else
        flash_alert_and_back_to_my_portfolio 'Please provide a valid symbol to search'
      end
    else
      flash_alert_and_back_to_my_portfolio 'Please provide a symbol to search'
    end
  end

  private

  def respond_with_stock_as_json
    respond_to do |format|
      format.js { render partial: 'users/result' }
    end
  end

  def flash_alert_and_back_to_my_portfolio(alert_message)
    flash.now[:alert] = alert_message
    respond_to do |format|
      format.js { render partial: 'users/result' }
    end
  end
end
