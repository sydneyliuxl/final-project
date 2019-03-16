require "csv"

namespace :slurp do
  desc "Reads the file projects.csv"
  task :projects => :environment do
    csv_text = File.read(Rails.root.join("lib", "csvs", "projects.csv")).encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Project.new
      t.name = row["name"]
      t.industry = row["industry"]
      t.business = row["business"]
      t.save
      puts row.to_hash
    end
  end
  
  desc "Reads the file funds.csv"
  task :funds => :environment do
    csv_text = File.read(Rails.root.join("lib", "csvs", "funds.csv")).encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Fund.new
      t.name = row["name"]
      t.duration = row["duration"]
      t.field = row["field"]
      t.stage = row["stage"]
      t.save
      puts row.to_hash
    end
  end
end
