class SessionsController < ApplicationController

  skip_before_filter :authentication_required

  def new

  end

  def create
    auth   = request.env['omniauth.auth']
    person = Authentication.find_or_create_person(auth)
    session[:user_id] = person.id

    redirect_to root_path, :notice => 'Logged in successfully'
  end

  def destroy
    reset_session

    redirect_to root_path, :notice => 'Successfully logged out'
  end

end

