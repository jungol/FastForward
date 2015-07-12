class ListsController < ApplicationController
  # before_action :authenticate_user!, only: [:show, :new, :create, :update]
  # before_action :is_admin?, only: [:new]
  # before_action :current_user.try(:admin?), only: [:show, :new, :create, :update]


  def index
    if params[:tag]
      @tag = Tag.find_by(id: params[:tag])
      @lists = @tag.lists
    else
      @lists = List.all
    end
    @subscribe_button = true
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items
    @submitter = User.find_by(id: @list.submitter) || nil
  end

  def new
    @list = List.new
    @tags = Tag.all
  end

  def create
    @list = List.new(list_params)
    if @list.save    
      flash[:success] = "List created!"
      redirect_to @list
    else
      render 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      flash[:success] = "List updated"
      redirect_to @list
    else
      render 'edit'
    end
  end

  private
  
    def list_params
      params.require(:list).permit(
        :title, 
        :published, 
        :description,
        :tag_ids => [], 
        :items_attributes => 
          [:id, :title, :author, :abstract, :url, :year, :journal]
      )
    end

    def is_admin?
      unless current_user.try(:admin?)
        redirect_to root_url
      end
    end

end
