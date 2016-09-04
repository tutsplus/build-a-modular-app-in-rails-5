Deface::Override.new({
  virtual_path: "news/links/links/new",
  name: "add_entries_select_to_links_form_new",
  insert_before: ".form-group:contains('submit')",
  partial: "overrides/links_form",
  namespaced: true
})

Deface::Override.new({
  virtual_path: "news/links/links/edit",
  name: "add_entries_select_to_links_form_edit",
  insert_before: ".form-group:contains('submit')",
  partial: "overrides/links_form",
  namespaced: true
})
