class User < ApplicationRecord
  MAX_OF_STOCKS = 3

  has_many :user_stocks
  has_many :stocks, through: :user_stocks
  has_many :friendships
  has_many :friends, through: :friendships

  validates_length_of :stocks, maximum: MAX_OF_STOCKS

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def can_track_stock?(ticker_symbol)
    stocks.count < MAX_OF_STOCKS && !stocks.find_by(ticker: ticker_symbol)
  end

  def full_name
    return "#{first_name} #{last_name}" if first_name || last_name

    'Anonymous'
  end
end
