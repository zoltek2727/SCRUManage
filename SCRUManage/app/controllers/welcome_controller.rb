class WelcomeController < ApplicationController
  def index
            if user_signed_in? 
 redirect_to "/pages/main" 
else

 end 
  end
end
