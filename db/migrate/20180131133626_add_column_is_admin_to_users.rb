class AddColumnIsAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :isadmin, :boolean, default: false
  end
end
