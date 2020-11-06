class Checklist < ApplicationRecord
    validates :title, presence: true, length: { maximum: 40 } 
    validates :description, presence: true
    has_many :questions, dependent: :destroy, inverse_of: :checklist
    has_one :audit, dependent: :destroy
    accepts_nested_attributes_for :questions, reject_if: ->(attributes){ attributes['title'].blank? || attributes['description'].blank? }, allow_destroy: true
end
