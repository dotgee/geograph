Geograph::Application.routes.draw do

  resources :charts do
    resources :build, controller: "charts/build"
  end
  root :to => "charts#index"
end
