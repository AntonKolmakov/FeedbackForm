class Answer < ApplicationRecord
  belongs_to :message
  validates :description, presence: true
end
