class InsecureUserController < ApplicationController
  def index
  end

  def create
    puts "headers:"
    puts request.headers.inspect
    user = InsecureUser.find_by(email: params[:email])
    puts 'Our user:'
    puts user.inspect
    if user
      if user.password == params[:password]
        flash[:error] = "Logged in successfully"
        cookies[:this_session] = "here you have a session cookie"
        redirect_to insecure_login_path
      else
        flash[:error] = "Password does not match the email"
        render :index, status: 401
      end
    else
      flash[:error] = "Email does not exist"
      render :index, status: 401
    end
  end
end
