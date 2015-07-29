class CollectionsController < ApplicationController
  include ApplicationHelper
  before_action :signed_in_user, only: [:show, :new, :create]
  # before_action :correct_user, only: [:show]


  def show
    @collection = Collection.find(params[:id])
    @items = @collection.items
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      current_user.collections << @collection
      flash[:success] = "You made a new collection called #{@collection.title}"
      redirect_to root_url
    end
  end

  private
    def collection_params
      params.require(:collection).permit(
          :title,
          :description
        ) 
    end



end
