class UsersController < ApplicationController


  get '/users/signin' do 
    # User::create(name: 'tgthg', email: 'jhbjhb', password_digest: 'jygbhvbhgvgfcg')


    # user = User::find(1)
    # user.email = 'anaaa'
    # user.save 

    # user =  User::find(1)
    # user.destroy

    erb :'users/signin'
  end

  get '/users/new' do 
    
    erb :'users/new'
  end

  post '/users/new' do
    validate_user_registration_input(params)
    User::create(name: params['name'], email: params['email'], password_digest: params['password'])
    
  end

  get '/users/edit' do 

    erb :'users/edit'
  end

  private

  def validate_user_registration_input(params)
    params['name'].length > 8 
    params['email']
    params['password'] == params['password_confirm']
  end
end