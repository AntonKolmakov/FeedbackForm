class Message < ApplicationRecord
  has_one :answer
  validates :description, :email, presence: true
  before_validation :ensure_email_has_a_value
  #Finding records where message.answer association does not exist
  default_scope { left_outer_joins(:answer).
  	              where( answers: { id: nil }, question: true ).
  	              order(created_at: :desc) }

  accepts_nested_attributes_for :answer

  private
    def ensure_email_has_a_value
      if email.nil?
        self.email = 'example@email.com'
      end
    end
end
