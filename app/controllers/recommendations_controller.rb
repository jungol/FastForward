class RecommendationsController < ApplicationController
  def new
    @list = List.find_by(params[:list])
    respond_to do |format|
      format.html
      format.js {@list}
    end
  end

  def create
    @list = params[:list]
    @email = params[:email]
    @recommendation = params[:recommendation]
    respond_to do |format|
      format.html
      format.js
    end
    RecommendationMailer.recommendation_email(@email, @recommendation, @list).deliver_now

  end
end
