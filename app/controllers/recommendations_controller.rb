class RecommendationsController < ApplicationController
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @email = params[:email]
    @recommendation = params[:recommendation]
    respond_to do |format|
      format.html
      format.js
    end
    RecommendationMailer.recommendation_email(@email, @recommendation).deliver_now

  end
end
