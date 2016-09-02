News::HomepageController.class_eval do
  before_action :find_entries, only: [:index]

  private

  def find_entries
    @entries = News::Blog::Entry.all.order(published_at: :desc)
  end
end
