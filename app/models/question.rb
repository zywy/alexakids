class Question < ActiveRecord::Base
  enum answer_type: { string: 0, number: 1 }

  validates :question, presence: true

  has_many :answers
  belongs_to :game
end
