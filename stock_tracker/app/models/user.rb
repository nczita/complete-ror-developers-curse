class User < ApplicationRecord
  MAX_OF_STOCKS = 3

  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  validates_length_of :stocks, maximum: MAX_OF_STOCKS

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def can_track_stock?(ticker_symbol)
    stocks.count < MAX_OF_STOCKS && !stocks.find_by(ticker: ticker_symbol)
  end
end 
