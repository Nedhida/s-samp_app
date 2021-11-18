Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'top' => 'homes#top'
#「.../todolists」というURLにpostメソッドでリクエストした時、todolistsコントローラーのcreateアクションが呼び出される
post 'todolists' => 'todolists#create'
get 'todolists' => 'todolists#index'
get 'todolists/:id' => 'todolists#show', as: 'todolist'
end

