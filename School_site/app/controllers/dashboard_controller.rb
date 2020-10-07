class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @student = User.new
  end

  def show
    @students = User.find[:id]
  end
end
