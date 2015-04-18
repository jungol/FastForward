class StaticPagesController < ApplicationController
  def home
    # @items = Item.top_votes
    @lists = List.recently_published
    @email_signup ||= EmailSignup.new
  end

  def search
  end

  def design
  end

  def design2
  end

  def design3
  end

  def contributors
  end

  def about
  end

  def people
  end

  def microfinance
    @lists = List.where(id: 0...28)
  end

  def health
    @lists = List.where(id: 28...39)
  end

  def growth
    @lists = List.where(id: [34, 39...47])
  end

  def education
    @lists = List.where(id: [29, 44, 47...62])
  end

  def history
    @lists = List.where(id: [62...74])
  end

  def foreignaid
    @lists = List.where(id: [74...85])
  end

  def propertyrights
    @lists = List.where(id: [85...100])
  end

end
