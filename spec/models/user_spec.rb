# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)      not null
#  email           :string(255)      not null
#  password_digest :string(255)
#

require 'spec_helper'
# describe "Users" do
	describe "my test", :js => true do
	  it "should do something" do
    visit '/about'

    click_on 'Create Account'

    page.should have_content 'Confirm'
  end
	# let!(:user) { FactoryGirl.create(:user) } 

	# 	before(:each) do
	# 	visit root_path
	# 	click_link('Create Account')
	# 	fill_in 'username',               with: user.username
	# 	fill_in 'email',                  with: user.email
	# 	fill_in 'password',               with: user.password
	# 	fill_in 'password_confirmation',  with: user.password_confirmation
	# 	click_button('Create')
	# end

	#  it "should be able to log in without errors" do
 #    current_path.should == root_path
 #    page.should have_link("Logout")
 #  end
end
