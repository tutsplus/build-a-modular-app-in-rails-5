Deface::Override.new({
  virtual_path: "news/homepage/index",
  name: "add_blog_entries_to_homepage",
  insert_after: "[data-news-hook='homepage']",
  partial: "overrides/entries_list",
  namespaced: true,
})
