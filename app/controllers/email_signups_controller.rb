class EmailSignupsController < ApplicationController
  def create
    @email_signup = EmailSignup.create(email_signup_params)
    if @email_signup.save
      flash[:success] = "Thanks for signing up!"
    else
      flash[:error] = @email_signup.errors.full_messages
    end
    redirect_to root_path
  end

  private

    def email_signup_params
      params.require(:email_signup).permit(:email)
    end
  
end