VideoLibrary::Application.routes.draw do
  devise_for :users

    resources :folders
    resources :videos

    namespace :admin do
      resources :folders
      resources :videos
      resource :dashboards, :only => [:show], :path => "/"
    end

  root :to => "pages#home"
end
