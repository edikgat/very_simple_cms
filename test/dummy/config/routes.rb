Rails.application.routes.draw do
  mount Mercury::Engine => '/'
  mount VerySimpleCms::Engine => "/very_simple_cms"
  root "home#index"

end
