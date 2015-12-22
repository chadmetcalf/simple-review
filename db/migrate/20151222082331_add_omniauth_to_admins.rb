class AddOmniauthToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :provider, :string
    add_index :admins, :provider
    add_column :admins, :uid, :string
    add_index :admins, :uid
  end
end
