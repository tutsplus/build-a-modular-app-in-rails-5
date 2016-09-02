News::Blog::Entry.class_eval do
  has_many :links, class_name: "News::Links::Link"
end
