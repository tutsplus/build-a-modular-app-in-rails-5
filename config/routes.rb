Rails.application.routes.draw do
  mount News::Core::Engine => "/", as: 'news'
end
