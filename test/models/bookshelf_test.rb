require 'test_helper'

class BookshelfTest < ActiveSupport::TestCase
  test "requires name" do
    shelf = Bookshelf.new
    shelf.validate

    assert shelf.errors[:name].present?
  end

  test "requires user_id" do
    shelf = Bookshelf.new
    shelf.validate

    assert_equal shelf.errors[:name], ["can't be blank"]
  end

  test "has_and_belongs_to_many books" do
    shelf = bookshelves(:science_fiction)

    assert_not_empty shelf.books
  end
end
