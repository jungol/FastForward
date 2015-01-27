class EmailSignupsController < ApplicationController
  def create
    @email_signup = EmailSignup.create(email_signup_params)
    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end

  private

    def email_signup_params
      params.require(:email_signup).permit(:email)
    end
  
end