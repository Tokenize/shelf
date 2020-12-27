require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "requires title" do
    book = Book.new
    book.validate

    assert_equal book.errors[:title], ["can't be blank"]
  end

  test "requires bookshelf_id" do
    book = Book.new
    book.validate

    assert_equal book.errors[:bookshelf_id], ["can't be blank"]
  end

  test "enforces numericality for rating" do
    book = Book.new(title: 'foo', rating: 'a')
    book.validate

    assert_equal book.errors[:rating], ["is not a number"]
  end

  test "enforces minimum rating of 0" do
    book = Book.new(title: 'foo', rating: -1)
    book.validate

    assert_equal book.errors[:rating], ["must be greater than or equal to 0"]
  end

  test "enforces maximum rating of 10" do
    book = Book.new(title: 'foo', rating: 11)
    book.validate

    assert_equal book.errors[:rating], ["must be less than or equal to 10"]
  end
end
