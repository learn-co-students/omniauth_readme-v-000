class User < ActiveRecord::Migration
  def change
    create_table :users |t|
    t.string :name
    t.string :email
    t.string :uid
    t.string :image
  end
  end
end
