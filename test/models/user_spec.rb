describe "Users" do
	let!(:user) { FactoryGirl.create(:user) } 

		before(:each) do
		visit root_path
		click_link('Login')
		fill_in 'username',                  with: user.username
		fill_in 'password',               with: user.password
		click_button('Login')
	end