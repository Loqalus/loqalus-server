## Routes



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
                api_pins GET    /api/pins(.:format)            api/pins#index {:format=>:json} **
                 api_tag GET    /api/tag(.:format)             api/tags#index {:format=>:json} **
                         POST   /api/tag(.:format)             api/tags#create {:format=>:json} **




###Create a User

POST api/user

request body:
```
{
    "user":{
        "email": "tomtom@bollaw.com",
        "password": "brochacho",
        "password_confirmation": "brochacho"
    }
}
```
The above hits api/registration#create

###Sign In a User

Post api/sessions

request body:
```
{
    "user":{
        "email": "boblobloaw@law.com",
        "password": "brochacho"
    }
}
```
response:

```
{
  "user": {
    "id": 1,
    "email": "boblobloaw@law.com",
    "created_at": "2016-06-11T21:50:33.296Z",
    "updated_at": "2016-06-11T21:50:33.296Z"
  },
  "auth_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiYm9ibG9ibG9hd0BsYXcuY29tIiwiZXhwIjoxNDY1NzY5MzIyfQ.hEU_wiEP-XSo78yeliTX_MDPHWzKniNKuo66wZLuDB4"
}
```

### Create a Tag

POST api/tag

request body:
```
{
    "tag":{
        "name": "rarePepe"
    }
}
```
response:

```
{
    "tag":{
        "name": "rarePepe"
        "id": "133769420XX"
    }
}
```


### Retreive all tags

GET api/tag

response:

```
{
    "tags":[
             {
               "name": "tag1",
               "id": "Xyqt129"
             },
             .
             .
             .
             {
               "name": "cache",
               "id": "m0n3t"
             }
    ]
}
```

### Retreive all tags

GET api/tag?lat=LAT&long=LONG&dist=DIST

response:

```
{
    "tags":[
             {
               "name": "tag1",
               "id": "Xyqt129"
             },
             .
             .
             .
             {
               "name": "cache",
               "id": "m0n3t"
             }
    ]
}
```

