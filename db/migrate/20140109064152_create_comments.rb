class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :admin_id
      t.integer :book_id

      t.timestamps
    end
    add_index :comments, :admin_id
    add_index :comments, :book_id
  end
end
