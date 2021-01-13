class Message < ApplicationRecord
  belongs_to :user

  validates :body,
    presence: true
  
  scope :last20, -> { order(:created_at).last(20) }
end
