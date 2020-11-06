class Answer < ApplicationRecord
    belongs_to :question
    belongs_to :audit
    validates :answer, presence: true
    validates :comment, presence: true, length: { minimum: 12 }
end
