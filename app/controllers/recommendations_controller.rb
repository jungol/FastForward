class RecommendationsController < ApplicationController
  def new
    @list = List.find_by(id: params[:list])
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
      format.html {}
      format.js {head :ok}
    end
    RecommendationMailer.recommendation_email(@email, @recommendation, @list).deliver_now
    redirect_to root_path
  end
end
