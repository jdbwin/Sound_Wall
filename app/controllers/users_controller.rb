class UsersController < ApplicationController
  include UserActions

  before_action :load_user

  def new
    @user = User.new
  end

end
