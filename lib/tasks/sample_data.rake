namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_items
    make_collections
    change_item_date
    # make_collections
  end
end

def make_users
  5.times do |n|
    email = "example-#{n+1}@econfrontier.com"
    password = "password"
    User.create!(email: email,
                 password: password)
  end
end

def make_items
  10.times do
    title = Faker::Lorem.words(10).join(" ")
    abstract = Faker::Lorem.paragraph
    url = "http://www.sufjan.com"
    authors = "#{Faker::Name.name}, #{Faker::Name.name}, #{Faker::Name.name}"
    Item.create!(
      title: title,
      abstract: abstract,
      url: url,
      authors: authors)
  end 
end

def make_collections
  users = User.all
  10.times do
    title = Faker::Lorem.words(3).join(" ")
    description = Faker::Lorem.paragraph
    users.each { |user| user.collections.create!(title: title, description: description)}
  end
end

def change_item_date
  Item.all.each do |item|
    if item.id % 2 == 0
      item.update_attribute(:created_at, Date.yesterday)
    end
  end
end