class ItemsController < ApplicationController
  
  def show
    
    @item = Item.find(params[:id])
    
    respond_to do |format|
      format.html
      format.js
    end
  
  end

  def index
    @item_groups = Item.all.group_by(&:date).sort.reverse
    @item_groups = @item_groups.paginate(:page => params[:page], :per_page=>1)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
