module News::Links
  class Link < ApplicationRecord
    belongs_to :user
  end
end
