require 'csv'

namespace :data do
  desc "TODO"
  task import: :environment do

  if Company.count == 0
   file = Rails.root.join("lib", "tasks", "data.csv")

   CSV.read(file, headers: true).each do |row|

   if row["Company"].present?
     company = Company.new
     company.season = row["Season"].to_i
     company.series = row["No. in series"].to_i
     company.name = row["Company"]
     company.deal = row["Deal"]
     company.industry = row["Industry"]
     company.entrepreneur_gender = row["Entrepreneur Gender"]
     company.amount = row["Amount"] && row["Amount"].gsub(/\$,/, "").to_i
     company.equity = row["Equity"] && row["Equity"].gsub(/\%/, "").to_i
     company.valuation = row["Valuation"]
     company.save
   end

   end
  end

  end

end

