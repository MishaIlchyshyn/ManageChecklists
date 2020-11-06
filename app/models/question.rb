class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 12, maximum: 40 } 
  validates :description, presence: true
  belongs_to :checklist
  has_one :answer, dependent: :destroy
end
