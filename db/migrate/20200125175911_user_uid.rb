class UserUid < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :uid, :integer, limit: 8
    add_column :users, :email, :string
    add_column :users, :name, :string
    add_column :users, :image, :binary
  end
end
