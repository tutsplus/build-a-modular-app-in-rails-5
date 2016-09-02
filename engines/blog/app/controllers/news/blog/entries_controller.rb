module News
  module Blog
    class EntriesController < ApplicationController
      before_action :authenticate_user!
      before_action :find_entry, only: [:show, :edit, :update, :destroy]
      authorize_resource class: News::Blog::Entry

      def index
        @entries = current_user.admin? ? News::Blog::Entry.all : current_user.entries
      end

      def show
      end

      def new
        @entry = Entry.new
      end

      def create
        @entry = Entry.new(entry_params)
        @entry.user = current_user
        if @entry.save
          redirect_to [news, @entry]
        else
          render :new
        end
      end

      def edit
      end

      def update
        if @entry.update(entry_params)
          redirect_to [news, @entry]
        else
          render :edit
        end
      end

      def destroy
        @entry.destroy
        redirect_to news.entries_url
      end

      private

      def find_entry
        @entry = Entry.find(params[:id])
      end

      def entry_params
        params.require(:entry).permit(:title, :published_at, :body)
      end

    end
  end
end
