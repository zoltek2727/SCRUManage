class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'Zaloguj się!'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

  def after_sign_in_path_for(resource)
    "/pages/main"
  end
end
