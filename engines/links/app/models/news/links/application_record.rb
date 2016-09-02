module News
  module Links
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
