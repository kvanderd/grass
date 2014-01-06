class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
    	t.string :first_name
    	t.string :historical_percent
    	t.string :historical_ratio
    	t.string :historical_rank
        t.text :interpretation
    	t.text :alive_today
    	t.text :most_common_age
    	t.text :births_yearly
    	t.string :birth_ratios
        t.string :birth_precentages
        t.text :etymology
        t.text :alternative_versions
        t.text :notable_people
    end
  end
end
