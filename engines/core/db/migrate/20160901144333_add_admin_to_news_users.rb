class AddAdminToNewsUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :news_users, :admin, :boolean
  end
end
