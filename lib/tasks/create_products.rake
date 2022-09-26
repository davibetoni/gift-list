require 'csv'

namespace :products do
  desc "Create all products to buy"

  task :setup => :environment do
    Rake::Task["products:wedding_setup"].invoke
    Rake::Task["products:bachelor_setup"].invoke
  end

  task :wedding_setup => :environment do
    csv_source = "lib/tasks/products.csv"
    CSV.foreach(csv_source) do |row|
      product_params = {
        name: row[0].titleize,
        value: row[1],
        photo: row[2],
        store_url: row[3]
      }
      Product.create!(product_params) unless Product.find_by(name: row[0].titleize)
      puts row[0]
    end
  end

  task :bachelor_setup => :environment do
    csv_source = "lib/tasks/cha_bar.csv"
    CSV.foreach(csv_source) do |row|
      product_params = {
        name: row[0].titleize,
        value: row[1],
        photo: row[2],
        store_url: row[3],
        for: 1
      }
      Product.create!(product_params) unless Product.find_by(name: row[0].titleize)
      puts row[0]
    end
  end
end