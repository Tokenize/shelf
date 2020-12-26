require 'test_helper'

class BookshelfTest < ActiveSupport::TestCase
  test "requires name" do
    shelf = Bookshelf.new
    shelf.validate

    assert shelf.errors[:name].present?
  end
end
