Rails.application.routes.draw do


  devise_for :users, :controllers => {sessions: 'api/sessions', registrations: 'api/registrations'}

  namespace :api, defaults: { format: :json }  do
    resources :users, :only => [:show, :create, :update, :destroy]
    resources :sessions, :only => [:create, :destroy]
    resources :users do
      resources :campaigns, :only => [:update, :destroy, :create, :show]
      resources :events, :only => [:update, :destroy, :create, :show]
      resources :conversations, :only => [:update, :destroy, :create, :show]
    end
  end

end
