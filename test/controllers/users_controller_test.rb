require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

	def new 

		@user= User.new

	end

	def create

	end
	
  # test "the truth" do
  #   assert true
  # end
end
