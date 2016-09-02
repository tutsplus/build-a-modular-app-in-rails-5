class CreateNewsEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :news_blog_entries do |t|
      t.string :title
      t.datetime :published_at
      t.text :body

      t.references :user

      t.timestamps
    end

    add_foreign_key :news_blog_entries, :news_users
  end
end
