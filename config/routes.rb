Rails.application.routes.draw do
  get "testando", to: "testador#testando"
  get "testando2", to: "testador#testando2"
  get "testando3", to: "testador#testando3"
	
	devise_for :users,
		path: '',
		path_names: {
			sign_in: 'login',
			sign_out: 'logout',
			registration: 'signup'
		},
		controllers: {
			#sessions: 'sessions',
			registrations: 'registrations'
		}

    post :auth, to: 'authentication#create'
    get  '/auth' => 'authentication#fetch'
end
