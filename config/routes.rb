Rails.application.routes.draw do
  root "todos#index"  # または他のコントローラー/アクション
  resources :todos
end

