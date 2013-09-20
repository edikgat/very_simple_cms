VerySimpleCms::Engine.routes.draw do
  resource :content, only: [:update]
end
