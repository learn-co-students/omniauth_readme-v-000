class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
      t.string :name
      t.string :email
      t.string :image
    end
  end
end
