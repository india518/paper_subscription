NewspaperApp::Application.routes.draw do
 resources :newspapers do
   resources :subscription_plans, :only => [:new]
 end
 
 resources :subscription_plans, :except => [:new]
 
 resources :users

end
