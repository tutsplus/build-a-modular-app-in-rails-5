module News
  class HomepageController < ApplicationController
    authorize_resource class: false

    def index
    end
  end
end
