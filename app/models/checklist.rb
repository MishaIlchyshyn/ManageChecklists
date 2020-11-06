class Checklist < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 40 } 
    validates :description, presence: true, length: { minimum: 3, maximum: 450 }
    has_many :questions, dependent: :destroy, inverse_of: :checklist
    has_one :audit, dependent: :destroy
    accepts_nested_attributes_for :questions, reject_if: ->(attributes){ attributes['title'].blank? || attributes['description'].blank? }, allow_destroy: true
end
