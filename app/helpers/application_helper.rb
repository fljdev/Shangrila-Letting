module ApplicationHelper
  
  def signed_in?
    if session[:landlord_id].nil?
      return
    else
      @current_user=Landlord.find_by_id(session[:landlord_id])
    end
  end
      
       
      
 end
