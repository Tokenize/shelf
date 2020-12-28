class Book < ApplicationRecord
  has_and_belongs_to_many :bookshelves

  validates :title, :bookshelf_id, presence: true
  validates :rating, numericality: { only_integers: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
