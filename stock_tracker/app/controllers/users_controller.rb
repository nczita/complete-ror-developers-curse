class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def my_friends
    @friends = current_user.friends
  end

  def search
    if params[:friend].present?
      @friend = params[:friend]
      if @friend
        respond_to do |format|
          format.js { render partial: 'users/friend_result' }
        end
      else
        flash.now[:alert] = 'Please provide a friend to search'
        respond_to do |format|
          format.js { render partial: 'users/friend_result' }
        end
      end
    else
      flash_alert_and_back_to_my_portfolio 'Please provide a symbol to search'
      flash.now[:alert] = 'Please provide a friend to search'
      respond_to do |format|
        format.js { render partial: 'users/friend_result' }
      end
    end
  end
end
