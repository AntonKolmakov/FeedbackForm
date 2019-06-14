class Message < ApplicationRecord
  has_one :answer
  validates :description, :email, presence: true

  accepts_nested_attributes_for :answer
end
