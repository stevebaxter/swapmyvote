module ApplicationHelper
  def facebook_login_path
    "/auth/facebook"
  end
  def twitter_login_path
    "/auth/twitter"
  end
  
  def current_user
    if !@current_user.nil?
      return @current_user
    elsif session.has_key?(:user_id)
      @current_user = User.find_by_id(session[:user_id])
      return @current_user
    else
      return nil
    end
  end
  
  def logged_in?
    return !!current_user
  end
end
