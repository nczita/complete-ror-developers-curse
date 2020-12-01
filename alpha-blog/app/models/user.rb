class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  before_save do
    self.email = email.downcase
  end

  validates :username, presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 3, maximum: 45 }
  validates :email, presence: true,
    uniqueness: { case_sensitive: false },
    length: { maximum: 105 },
    email: true

  has_secure_password
end
