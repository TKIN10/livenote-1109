class VenuesController < ApplicationController
  def index
    @users = User.all
  end
end
