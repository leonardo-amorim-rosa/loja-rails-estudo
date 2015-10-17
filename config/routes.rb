Rails.application.routes.draw do
  resources :departamentos
#  get "produtos" => "produtos#index"
#  get "produtos/new" => "produtos#new"
#  post "produtos" => "produtos#create"
#  delete "produtos/:id/remover" => "produtos#destroy", as: :produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  get "produtos/busca" => "produtos#busca", as: :produto_busca	
  root "produtos#index"
end
