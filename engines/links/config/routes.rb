News::Core::Engine.routes.draw do
  scope module: "links" do
    resources :links
  end
end
