class StaticPagesController < ApplicationController
  def home
    # @items = Item.top_votes
    @lists = List.all
    @email_signup ||= EmailSignup.new
  end

  def design
  end

  def design2
  end

  def design3
  end

end
