# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)      not null
#  email           :string(255)      not null
#  password_digest :string(255)
#  name_id         :integer
#

class User < ActiveRecord::Base
	# include ActiveModel::Validations

	has_many :identities
	has_many :names, through: :identities
	has_many :states, through: :identities
  accepts_nested_attributes_for :states, :names

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email
  # validates_format_of :email, with: /^[\w\d]+$/ on: :create, message: "is invalid"
  validates_length_of :password, :minimum => 8, :maximum => 25
  has_secure_password
 
end
