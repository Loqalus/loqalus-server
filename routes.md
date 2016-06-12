## Routes

docker-compose run rails g model event title:string start_time:time start_date:date description:text link:string in_house:boolean


                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       api/sessions#new
            user_session POST   /users/sign_in(.:format)       api/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      api/sessions#destroy
           user_password POST   /users/password(.:format)      devise/passwords#create
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                         PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)        api/registrations#cancel
       user_registration POST   /users(.:format)               api/registrations#create **
   new_user_registration GET    /users/sign_up(.:format)       api/registrations#new
  edit_user_registration GET    /users/edit(.:format)          api/registrations#edit
                         PATCH  /users(.:format)               api/registrations#update
                         PUT    /users(.:format)               api/registrations#update
                         DELETE /users(.:format)               api/registrations#destroy
               api_users POST   /api/users(.:format)           api/users#create {:format=>:json}
                api_user GET    /api/users/:id(.:format)       api/users#show {:format=>:json} **
                         PATCH  /api/users/:id(.:format)       api/users#update {:format=>:json}  **
                         PUT    /api/users/:id(.:format)       api/users#update {:format=>:json}  
                         DELETE /api/users/:id(.:format)       api/users#destroy {:format=>:json} **
            api_sessions POST   /api/sessions(.:format)        api/sessions#create {:format=>:json} **
             api_session DELETE /api/sessions/:id(.:format)    api/sessions#destroy {:format=>:json} **


Create a User

POST api/user

request body:

{
    "user":{
        "email": "tomtom@bollaw.com",
        "password": "brochacho",
        "password_confirmation": "brochacho"
    }
}

The above hits api/registration#create

Sign In a User

Post api/sessions

{
    "user":{
        "email": "boblobloaw@law.com",
        "password": "brochacho"
    }
}

Response 

{
  "user": {
    "id": 1,
    "email": "boblobloaw@law.com",
    "created_at": "2016-06-11T21:50:33.296Z",
    "updated_at": "2016-06-11T21:50:33.296Z"
  },
  "auth_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiYm9ibG9ibG9hd0BsYXcuY29tIiwiZXhwIjoxNDY1NzY5MzIyfQ.hEU_wiEP-XSo78yeliTX_MDPHWzKniNKuo66wZLuDB4"
}