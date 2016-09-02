module News::Blog
  class Entry < News::ApplicationRecord
    belongs_to :user, class_name: "News::User"
  end
end
