# == Schema Information
#
# Table name: lists
#
#  id            :integer          not null, primary key
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  title         :string
#  upvotes_count :integer
#  curator       :string
#  curator_url   :string
#  view_count    :integer
#  published     :boolean
#  sources       :string
#

class List < ActiveRecord::Base
  
  include AlgoliaSearch

  algoliasearch per_environment: true do
    attribute :title, :description, :created_at, :published, :id

    attributesToIndex ['unordered(title)', 'unordered(description)']
  end

  # validates :title, presence: true
  # validates_presence_of :description

  has_many :item_lists
  has_many :items, :through => :item_lists
  has_many :taggings
  has_many :tags, :through => :taggings
  has_many :user_lists
  has_many :users, :through => :user_lists
  has_many :list_collections
  has_many :collections, :through => :list_collections
  has_many :subscriptions
  has_many :users, through: :subscriptions

  accepts_nested_attributes_for :items

  # default_scope -> { where(published: true) }

  # override initializer to ensure new Item only gets created
  # if an object with the same title doesn't already exist.
  # (if you just enforce uniqueness on item model,  
  # association won't be created)
  def items_attributes=(items_attributes)
    items_attributes.each do |key, val|
      if @item = Item.find_by_id(val[:id])
        @item.update_attributes(val)
      elsif @item = Item.find_by(title: val[:title])
        @item.update_attributes(val)
      else
        @item = Item.new(val)
      end
      self.items << @item unless self.items.include?(@item)
    end
  end

  def self.recently_published
    where('created_at > ?', 1.day.ago).where(published: true)
  end

  # Creates hash of list_ids (keys) and tag counts (values)
  def self.hash_of_list_id_and(tags)
    joins(:taggings).
    where('tag_id IN (?)', tags).
    where(published: true).
    group('list_id').
    having('COUNT(list_id) >= ?', tags.count).
    count
  end

  # Grabs keys of hash above to get the requested list objects
  def self.get_lists_with(tags)
    hash_of_list_id_and(tags).map{ |list_id, tag_count| List.find_by_id(list_id) }
  end

  def get_view_count
    if view_count > 0
      "Viewed #{view_count} times"
    else
      return
    end
  end

  def date
    self.created_at.strftime('%B %d %A')
  end

  private











end
