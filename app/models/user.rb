class User < ApplicationRecord
  has_secure_password
  has_many :blog_entries, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
