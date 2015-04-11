class SessionsController < ApplicationController
  def create
    # get data from Facebook
    user = User.koala(request.env['omniauth.auth']['credentials'])
    # retrieve from User Model
    @user = User.find_by fbid: user['id']
    # if unable to find from User Model >> New User
    if !@user
      #create user
      userParams = {user: {name: user['name'], email: user['email'], gender: user['gender'], locale: user['locale'], fbid: user['id'], age_range: user['age_range'].to_s}}
      userParams = ActionController::Parameters.new(userParams)
      @user = User.create(userParams.require(:user).permit!)
    end

    # actual login
    session[:user_id] = @user.id

    redirect_to root_path

  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end

end