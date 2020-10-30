class Checklist < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 40 } 
    validates :description, presence: true, length: { minimum: 10, maximum: 450 }
end
