class AddEntryToNewsLinksLinks < ActiveRecord::Migration[5.0]
  def change
    add_reference :news_links_links, :entry
    add_foreign_key :news_links_links, :news_blog_entry
  end
end
