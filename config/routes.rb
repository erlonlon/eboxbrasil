Eboxbrasil::Application.routes.draw do 
 

root to: "pages#index" 
 
 resources :curriculo, :only => [:index]
resources :customers, :only => [:index] #cria só rota para get

resources :posts , :only => [:index, :show]

resources :abauts, :only => [:index]

resources :services, :only => [:index]

resources :contacts


scope '/admin' do
devise_for :users, :controllers => {
	:sessions => "admin/sessions",
:passwords => "admin/passwords"}
end

namespace :admin do

root to: "admins#index"
resources :posts
resources :categories
resources :admins
resources :users, :except => [:show]
resources :galeries
resources :category_galeries
resources :contacts, :only => [:index, :show]

end
end
