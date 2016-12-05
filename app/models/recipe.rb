class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, format: { with: /Brussels sprouts/,message: "missing something..."}
  validates :servings, numericality: { greater_than_or_equal_to: 1 }, allow_blank: true

  has_many :comments
end
