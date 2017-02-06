class EmailController < ApplicationController
  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to root_url
    end
  end

  private
  def email_params
    params.require(:email).permit(:email)
  end
end
