Eboxbrasil::Application.routes.draw do 


scope '/admin' do
  devise_for :users, :controllers => {
  	:sessions => "admin/sessions",
    :passwords => "admin/passwords"}
end

root to: "pages#index" 


get "abauts/index"
resources :abauts
get "servives/index"
resources :services

get "pages/index"


namespace :admin do

root to: "admins#index"

resources :posts
resources :categories
resources :admins
resources :users, :except => [:show]
resources :galeries
resources :category_galeries

end




end
