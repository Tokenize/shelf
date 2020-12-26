class CreateJoinTableForBookshelvesAndBooks < ActiveRecord::Migration[6.0]
  def change
    create_join_table :bookshelves, :books do |t|
      t.index :bookshelf_id
      t.index :book_id
    end
  end
end
