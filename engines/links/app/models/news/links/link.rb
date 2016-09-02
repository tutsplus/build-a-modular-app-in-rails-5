module News::Links
  class Link < ApplicationRecord
    belongs_to :user
    belongs_to :entry
  end
end
