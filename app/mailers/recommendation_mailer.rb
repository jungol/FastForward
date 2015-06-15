class RecommendationMailer < ApplicationMailer
  default from: 'ethanbarhydt@gmail.com'

  def recommendation_email(email, recommendation)
    @email = email
    @recommendation = recommendation
    mail(to: 'ethanbarhydt@gmail.com', subject: 'Paper Recommendation')
  end

end
