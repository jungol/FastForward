class StaticPagesController < ApplicationController
  def home
    # @items_by_month = Item.all.group_by { |t| t.created_at.beginning_of_month}
    @feed_groups = Item.all.group_by(&:created_at_date).sort_by { |date, items| Date.parse(date).beginning_of_month}
    @feed_groups = @feed_groups.reverse.paginate(page: params[:page], per_page: 2)
  end
end
