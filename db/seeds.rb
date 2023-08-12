require 'csv'

puts 'Importing categories...'
CSV.foreach(Rails.root.join('db/seeds/csv/categories.csv'), headers: true) do |row|
  Category.create! do |category|
    category.id = row[0]
    category.name = row[1]
    category.available = row[2]
  end
end

require 'csv'

puts 'Importing features...'
CSV.foreach(Rails.root.join('db/seeds/csv/features.csv'), headers: true) do |row|
  Feature.create! do |feature|
    feature.id = row[0]
    feature.name = row[1]
    feature.available = row[2]
  end
end
