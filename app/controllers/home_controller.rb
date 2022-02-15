class HomeController < ApplicationController
  before_action :authenticate_user!


  def index
    if user_signed_in?
      @courses = current_user.course_per_users
    end
  end
end
