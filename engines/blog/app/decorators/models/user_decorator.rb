News::User.class_eval do
  has_many :entries, class_name: "News::Blog::Entry"
end
