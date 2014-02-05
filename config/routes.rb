Meeapp::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  root 'pages#home'

  get '/contact', to: 'pages#contact'
  get '/faq', to: 'pages#faq'
  get '/voorwaarden', to: 'pages#voorwaarden'
  get '/gemeente', to: 'pages#gemeente'
  get '/professionals', to: 'pages#professionals'
  get '/professionals/opweg', to: 'pages#opweg'
  get '/client', to: 'pages#client'
  resources :pages, only: [:index, :edit, :update]

  scope '/professionals' do
    resources :mijnwerknemers
  end

end
