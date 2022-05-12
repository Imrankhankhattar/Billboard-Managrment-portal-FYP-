Rails.application.routes.draw do
  get "/", to: "main#index"
  root :to => 'main#index'
  get "/login", to: "login#loginpage"
  post "/login", to: "login#create"
  get "/register", to: "register#signup"
  post "/register",to: "register#create"
  get "/owner", to: "owner#ownerdashboard"
  get "/client", to: "client#clientdashboard"
  delete "/logout" , to: "login#destroy"

  get "/addbillboard", to: "addbillboard#add"
  post "/addbillboard", to: "addbillboard#addboard"
  
  get "/showboards", to: "showboards#showboards"

  post '/showboards/:id/edit', to: 'showboards#update'
  delete '/showboards/:id/delete', to: 'showboards#destroy'

  resources :showboards

  get "/ownerprofile", to: "ownerprofile#Oprofile"
  post '/ownerprofile/:id/edit', to: 'ownerprofile#update'

  get "/ownerpayment", to: "ownerpayment#ownerpaymentdetails"

  get "/book/:id", to: "book#show"

  get "/upload", to: "upload#uploadcontent"
  post "/upload", to: "upload#uploadcontent"
  get "/pay", to: "pay#payment"
  post "/pay", to: "pay#pay"

  get "/viewrequest/viewrequests", to: "viewrequest#viewrequests"
  get "/viewrequest/openrequest/:id", to: "viewrequest#openrequest"
  get "/viewrequest/approvecontent/:id", to: "viewrequest#approvecontent"
  get "/viewrequest/bookedbillboards", to: "viewrequest#bookedbillboards"

  get "/open", to: "open#openrequest"
  get "/viewbillboards", to: "viewbillboards#viewboards"

  get '/pendingrequest', to:'pendingrequest#pendingrequests'

  get '/pending', to: 'pending#requested'

  resources :book
  resources :pendingrequest
  resources :ownerprofile

end
