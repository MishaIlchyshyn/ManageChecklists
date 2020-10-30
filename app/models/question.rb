class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 12, maximum: 40 } 
  validates :description, presence: true, length: { minimum: 3, maximum: 450 }
  belongs_to :checklist
end
