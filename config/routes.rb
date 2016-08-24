Rails.application.routes.draw do


  devise_for :users

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

    controller :users do 
      post 'users/interests' => :interests
    end

    controller :events do 
      get 'events/interests' => :interests
      post '/event/rsvp' => :rsvp
      get '/event/:id' => :event
      get '/events' => :index
      post '/events/comments' => :comment
      get '/events/:id/comments' => :get_comments
    end

    controller :campaigns do
      get 'campaigns/interests' => :interests
      get '/campaign/:id' => :campaign
      get '/campaigns' => :index
      post '/campaigns/comments' => :comment
      get '/campaigns/:id/comments' => :get_comments
    end

    controller :conversations do
      get 'conversations/interests' => :interests
      get '/conversation/:id' => :conversation
      get '/conversations' => :index
      post '/conversations/comments' => :comment
      get '/conversations/:id/comments' => :get_comments
    end

    controller :tags do 
      get '/tag' => :index
      post '/tag' => :create
    end
  end

end
