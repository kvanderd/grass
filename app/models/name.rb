# == Schema Information
#
# Table name: names
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Name < ActiveRecord::Base
	has_many :users

end
