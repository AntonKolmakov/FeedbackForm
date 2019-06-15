class Message < ApplicationRecord
  has_one :answer
  validates :description, :email, presence: true
  #Finding records where parent association does not exist
  default_scope { left_outer_joins(:answer).where( answers: { id: nil }, question: true ) }
  accepts_nested_attributes_for :answer
end
