class Audit < ApplicationRecord
    has_many :answers, dependent: :destroy, inverse_of: :audit
    belongs_to :checklist
    accepts_nested_attributes_for :answers, reject_if: ->(attrs) { attrs['answer'].blank? || attrs['comment'].blank? }
end
