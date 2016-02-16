class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid, :limit => 8
      t.string :info
      t.string :email
      t.string :name
    end
  end
end
