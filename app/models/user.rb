class User < ActiveRecord::Base
  after_create :first_collection
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :collections

  def feed
    Item.all
  end

  private

    def first_collection
      self.collections.create!(title:"My first collection")
    end

end
