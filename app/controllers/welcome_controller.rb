class WelcomeController < ApplicationController
  def home
  	if (current_user)
  		@tests = Test.all
  	end
  end
end
