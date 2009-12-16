class HomeController < ApplicationController
  
  def index
    if logged_in?
      token = current_user.access_token(:dawanda)
      @user = token.get('/api/v1/oauth/users/').body if token
    end
  end
  
end