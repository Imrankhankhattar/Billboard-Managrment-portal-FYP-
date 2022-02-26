Rails.application.routes.draw do
  get "/", to: "main#index"
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
end
