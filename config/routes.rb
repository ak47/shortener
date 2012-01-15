Shortener::Application.routes.draw do
  devise_for :users

  resource "redirecter", :only => [:show]
  resources :shorties do
    resources :hits, :only => [:index]
  end
  match '/:key' => 'redirecters#show', :as => :root_directer

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'
end
