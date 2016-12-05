class Comment < ActiveRecord::Base
  validates :content, length: { maximum: 140 }
  belongs_to :recipe
  validates :recipe_id, presence: true
end
