Deface::Override.new({
  virtual_path: "news/blog/entries/show",
  name: "add_links_list_to_entries",
  insert_after: "[data-news-hook='after-entry']",
  partial: "overrides/links_list",
  namespaced: true
})
