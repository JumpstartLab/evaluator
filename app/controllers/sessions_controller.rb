class SessionsController < ApplicationController

  skip_before_filter :authentication_required

  def new

  end

  def create
    auth   = request.env['omniauth.auth']

    begin
      person = Authentication.find_or_create_person(auth)
      session[:user_id] = person.id

      redirect_to root_path, :notice => 'Logged in successfully'
    rescue ActiveRecord::RecordInvalid
      redirect_to signin_path, :notice => 'Your GitHub account is not recognized'
    end
  end

  def destroy
    reset_session

    redirect_to root_path, :notice => 'Successfully logged out'
  end

end

