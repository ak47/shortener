Shortener::Application.routes.draw do
  resource "redirecter", :only => [:show]
  resources :shorties
  match '/:key' => 'redirecters#show'

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
end
