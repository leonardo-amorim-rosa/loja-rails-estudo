Rails.application.routes.draw do
#  get "produtos" => "produtos#index"
#  get "produtos/new" => "produtos#new"
#  post "produtos" => "produtos#create"
#  delete "produtos/:id/remover" => "produtos#destroy", as: :produto
  resources :produtos, only: [:new, :create, :destroy]
  get "produtos/busca" => "produtos#busca", as: :produto_busca	
  root "produtos#index"
end
