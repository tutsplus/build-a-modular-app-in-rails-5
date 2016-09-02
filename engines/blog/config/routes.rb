News::Core::Engine.routes.draw do
  scope module: "blog" do
    resources :entries
  end
end
