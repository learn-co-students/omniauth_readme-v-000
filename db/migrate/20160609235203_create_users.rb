class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :email
      t.text :name

      t.timestamps null: false
    end
  end
end
