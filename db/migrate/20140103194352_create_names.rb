class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
    	t.string :name
    end
  end
end
