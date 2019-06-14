class Message < ApplicationRecord
  validates :description, :email, presence: true
end
