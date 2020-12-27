class Bookshelf < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :books

  validates :name, :user_id, presence: true
end
