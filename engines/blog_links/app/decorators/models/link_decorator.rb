News::Links::Link.class_eval do
  belongs_to :entry, class_name: "News::Blog::Entry"
end
