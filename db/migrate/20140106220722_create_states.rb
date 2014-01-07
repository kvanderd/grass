class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    	t.string :name
    	t.string :abbreviation, limit: 2
    	t.decimal :women_percent_income
    	t.decimal :percent_college_degree
    	t.integer :per_capita_income
    end
  end
end
