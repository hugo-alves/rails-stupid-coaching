Rails.application.routes.draw do
  get 'answer' => 'coaching#answer'

  get 'ask' => 'coaching#ask'

  # post 'ask' => 'coaching#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
