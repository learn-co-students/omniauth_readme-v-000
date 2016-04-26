class CreateUsers < ActiveRecord::Migration
  create_table :users do |t|
    t.integer :uid
  end
end
