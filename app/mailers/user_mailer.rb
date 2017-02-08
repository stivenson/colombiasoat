class UserMailer < ApplicationMailer
  def sign_up_confirmation(soat)
    @soat = soat
    mail(to: @soat.email, subject: "Confirm your Culttt Membership!")
  end
end
