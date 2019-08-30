class Todo < ApplicationRecord
  belongs_to :category
  default_scope -> { order(created_at: :desc) }
  validates :category_id, presence: true
  validates :content, presence: true
end
