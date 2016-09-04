News::Links::LinksController.class_eval do
  def link_params
    params.require(:link).permit(:url, :entry_id)
  end
end
