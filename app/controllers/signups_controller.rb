class SignupsController < ApplicationController
  def index
      @new_signup = Signup.new
  end
    
  def create
      @new_signup = Signup.new(signup_params)
      if @new_signup.save
          redirect_to '/thanks'
      else
          render 'new'
      end        
  end
    
  private
  def signup_params
      params.require(:signup).permit(:firstname, :email)
  end      
end
