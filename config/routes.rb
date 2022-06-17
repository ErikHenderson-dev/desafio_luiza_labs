Rails.application.routes.draw do
  scope ENV['BASE_HREF'] do
    resources :clients, only: %i[index show create update destroy]
    resources :products, only: %i[index show create update destroy]
    resources :favorite_products, only: %i[index show create update destroy]
  end
end
