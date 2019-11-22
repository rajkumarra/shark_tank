class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.integer :season
      t.integer :series
      t.string :name
      t.string :deal
      t.string :industry
      t.string :entrepreneur_gender
      t.integer :amount
      t.integer :equity
      t.integer :valuation

      t.timestamps
    end
  end
end
