class CreateNewsLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :news_links_links do |t|
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_foreign_key :news_links_links, :news_users
  end
end
