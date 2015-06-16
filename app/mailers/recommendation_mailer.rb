class RecommendationMailer < ApplicationMailer
  default from: 'ethanbarhydt@gmail.com'

  def recommendation_email(email, recommendation, list)
    @email = email
    @list = list
    @recommendation = recommendation
    mail(to: 'ethanbarhydt@gmail.com', subject: 'Paper Recommendation')
  end

end
