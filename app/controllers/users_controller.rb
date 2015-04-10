class UsersController < ApplicationController

  def index

  end

  def login
    user = User.koala(request.env['omniauth.auth']['credentials'])
    @user = User.find_by fbid: user['id']
    if !@user
      #create user
      userParams = {user: {name: user['name'], email: user['email'], gender: user['gender'], locale: user['locale'], fbid: user['id'], age_range: user['age_range'].to_s}}
      userParams = ActionController::Parameters.new(userParams)
      @user = User.create(userParams.require(:user).permit!)
    end

    
  end

end