class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn
      t.text :synopsis
      t.text :notes
      t.boolean :completed, null: false, default: false
      t.date :completed_on
      t.integer :rating, size: 1, default: 0
      t.references :bookshelf, foreign_key: true

      t.timestamps
    end
  end
end
