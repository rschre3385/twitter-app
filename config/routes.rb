Rails.application.routes.draw do



  devise_for :users

  resources :tweets do 
    member do 
      put "like" => 'tweets#upvote'
      put "unlike" => 'tweets#downvote'
    end
  end

  root 'epicenter#feed'

  get 'following' => 'epicenter#following'

  get 'followers' => 'epicenter#followers'

  get 'all_users' => 'epicenter#all_users'

  get 'show_user' => 'epicenter#show_user'

  get 'now_following' => 'epicenter#now_following'

  get 'unfollow' => 'epicenter#unfollow'

  # get :username => 'epicenter#show_user', as: :user_path

  get 'tag_tweets' => 'epicenter#tag_tweets'

  #Going to another user in the url(localhost:3000/show_user?id=2)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
