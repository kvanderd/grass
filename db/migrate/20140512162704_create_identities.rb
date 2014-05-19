class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
    	t.belongs_to :user
    	t.belongs_to :state
    	t.belongs_to :name
    	t.datetime
    end
  end
end
