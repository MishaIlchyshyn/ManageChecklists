class Publish < ApplicationRecord
  belongs_to :user
  belongs_to :published, polymorphic: true
end
