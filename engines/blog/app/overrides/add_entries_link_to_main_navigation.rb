Deface::Override.new({
  virtual_path: "layouts/news/application",
  name: "add_entries_link_to_main_navigation",
  insert_after: "[data-news-hook='main-navigation']",
  partial: "overrides/entries_link",
  namespaced: true,
  original: 'f2aba11908022c99100d6a4e521a49352809e8ba'
})
