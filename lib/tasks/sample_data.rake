namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_lists
    make_items
    make_item_lists
  end
end

def make_lists
  100.times do |n|
    title = Faker::Lorem.words(4).join(" ")
    description = Faker::Lorem.sentence
    curator = Faker::Name.name
    curator_url = "http://www.sufjan.com"
    List.create!(
      title:       title,
      description: description,
      curator:     curator,
      curator_url: curator_url)
  end
end

def make_items
  8.times do |n|
    title = Faker::Lorem.words(10).join(" ")
    url = "http://www.sufjan.com"
    year = 1998
    author = Faker::Name.name
    journal = "Journal of #{Faker::Commerce.department}"
    Item.create!(
      title:   title,
      url:     url,
      year:    year,
      author:  author,
      journal: journal)
  end
end

def make_item_lists
  lists = List.all
  items = Item.all
  lists.each do |list|
    list.items << items
  end
end