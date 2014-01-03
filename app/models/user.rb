class User < ActiveRecord::Base
	include ActiveModel::Validations
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email
  # validates_format_of :email, with: /^[\w\d]+$/ on: :create, message: "is invalid"
  validates_presence_of :password
  validates_length_of :password, :minimum => 8, :maximum => 25
  has_secure_password
end