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

    controller :pins do 
      get '/pins' => :index
    end

    controller :events do 
      get '/events' => :index
      post 'events/comments' => :comment
      get 'events/comments' => :get_comments
    end

    controller :campaigns do 
      get '/campaigns' => :index
      post '/campaigns/comments' => :comment
      get '/campaigns/comments' => :get_comments
    end

    controller :conversations do 
      get '/conversations' => :index
      post '/conversations/comments' => :comment
      get '/conversations/comments' => :get_comments
    end

    controller :tags do 
      get '/tag' => :index
      post '/tag' => :create
    end
  end

end
