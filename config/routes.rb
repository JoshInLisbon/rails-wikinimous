Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # crud

  # root
  root to: 'articles#index'

  # 23:45 note: had to be moved up because of the issue with :id as string, needs to be above show
  # C
  # new
  get 'articles/new', to: 'articles#new' #articles_new
  # create
  # unsure where to send post after new
  # this is correct
  post 'articles', to: 'articles#create'

  # R
  # index
  get 'articles', to: 'articles#index'
  # show
  get 'articles/:id', to: 'articles#show', as: :article



  # U
  # edit
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  # update
  # unsure where to send this too... feels like you see the article/id
  patch 'articles/:id', to: 'articles#update'

  # D
  # destroy
  delete 'articles/:id', to: 'articles#destroy', as: :destroy_article
end
