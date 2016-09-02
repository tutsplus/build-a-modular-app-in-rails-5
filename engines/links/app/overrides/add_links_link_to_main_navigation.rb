Deface::Override.new({
  virtual_path: "layouts/news/application",
  name: "add_links_link_to_main_navigation",
  insert_after: "[data-news-hook='main-navigation']",
  partial: "overrides/links_link",
  namespaced: true
})
