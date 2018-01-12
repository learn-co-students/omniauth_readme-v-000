class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image
      t.string :uid

      t.timestamps null: false
    end
  end
end



# URL Blocked: This redirect failed because the redirect URI is not whitelisted in the app’s 
# Client OAuth Settings. Make sure Client and Web OAuth Login are on and add all your app domains as
# Valid OAuth Redirect URIs.
