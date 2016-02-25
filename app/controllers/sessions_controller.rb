class SessionsController < ApplicationController
  def new
  end

  def create
    landlord = Landlord.find_by(email: params[:session][:email].downcase)
    if landlord && landlord.authenticate(params[:session][:password])
                 session[:landlord_id]=landlord.id     #stores the id in the session
                 redirect_to landlord              #displays the user/show view
      else
      flash.now[:danger]="invalid email/password combination."
         render 'new'                           #shows the login page again
      end
  end

  def destroy
    if signed_in?
      session[:landlord_id]=nil
    else
      flash[:notice]="You need to log in first"
    end
    redirect_to root_path
  end
  
end
