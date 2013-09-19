Rails.application.routes.draw do
  mount Mercury::Engine => '/'
  # root "home/index"
  mount VerySimpleCms::Engine => "/very_simple_cms"
  get "home/index_1"
  root "home#index"

end
