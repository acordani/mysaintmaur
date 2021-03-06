Rails.application.routes.draw do
	mount Attachinary::Engine => "/attachinary"
	devise_for :users
	root to: 'pages#home'
	resources :announces

	get "/sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
