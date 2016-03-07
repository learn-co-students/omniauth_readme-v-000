class CreateDons < ActiveRecord::Migration
  def change
    create_table :dons do |t|

      t.timestamps null: false
    end
  end
end
