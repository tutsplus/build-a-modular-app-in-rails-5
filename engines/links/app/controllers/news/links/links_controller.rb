module News
  module Links
    class LinksController < ApplicationController
      before_action :authenticate_user!
      before_action :find_link, only: [:show, :edit, :update, :destroy]
      authorize_resource class: News::Links::Link

      def index
        @links = News::Links::Link.all
      end

      def show
      end

      def new
        @link = Link.new
      end

      def create
        @link = Link.new(link_params)
        @link.user = current_user
        if @link.save
          redirect_to [news, @link]
        else
          render :new
        end
      end

      def edit
      end

      def update
        if @link.update(link_params)
          redirect_to [news, @link]
        else
          render :edit
        end
      end

      def destroy
        @link.destroy
        redirect_to news.links_url
      end

      private

      def find_link
        @link = Link.find(params[:id])
      end

      def link_params
        params.require(:link).permit(:url)
      end

    end
  end
end
