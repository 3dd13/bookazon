class AddAdminIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :admin_id, :integer
  end
end
