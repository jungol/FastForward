class ListsController < ApplicationController
  def index
    if @tags = params[:tags]
      @temp_lists = List.tagged_with(@tags)
      @lists = @temp_lists.map{ |key,val| List.find_by_id(key) }
    else
      @lists = List.all
    end
    @checked_tags = Hash[(Tag.where(id: params[:tags])).collect { |tag| [tag.id, "true"]}]
    @tags = Tag.all
    respond_to do |format|
      format.html { }
      # format.js
    end
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items
  end
end

# Photo.joins(:tags).where('tags.name' => ['herp','derp']).group(:id)

# def self.tagged_with(name) #name is an array of 1 or more tag names
#     all(:conditions => {:tags => {:name => name}},
#       :joins      => :taggings,
#       :joins      => :tags,
#       :group      => 'articles.id',
#       :having     => ['COUNT(*) >= ?', name.length]
#     )
# end

# Student.where(:seeking_position => position,
#               :min_hourly => min_hourly,
#               :max_hourly => max_hourly,
#               :start_weeks => start_weeks)

# uthor.joins(:articles).where(articles: { author: author })