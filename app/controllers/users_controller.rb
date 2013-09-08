class UsersController < ApplicationController

	def create
		gb = Gibbon::API.new("811d9365aef39a5570cfe3cf7e2a149f-us7")
		gb.lists.subscribe({:id => "c40215e3ab",
			:email => {:email => params[:user][:email]},
			:merge_vars => {:FNAME => 'Some', :LNAME => 'User'},
			:double_optin => false})
		redirect_to root_path
=begin
		@user = User.new params[:user]
		if @user.save
			flash[:notice] = "Thank your for signing up!  We will keep you up to date on our progress."
			UserMailer.welcome_email(@user).deliver
		else
			flash[:notice] = @user.errors.full_messages.to_sentence
		end
		redirect_to root_path
=end
	end

end
