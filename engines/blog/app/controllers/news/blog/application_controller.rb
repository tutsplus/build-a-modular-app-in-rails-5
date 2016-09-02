module News
  module Blog
    class ApplicationController < News::ApplicationController
      protect_from_forgery with: :exception
    end
  end
end
