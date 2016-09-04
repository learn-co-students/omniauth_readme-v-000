class AddUidToUser < ActiveRecord::Migration
  def change
    add_column :users, :uid, :integer
    add_index :users, :uid, unique: true
  end
end
