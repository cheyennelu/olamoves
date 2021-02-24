class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @videos = Video.all.sort_by(&:created_at).reverse
    @videos_one = @videos[0]
    @videos_two = @videos[1]
    @videos_three = @videos[2]
    @videos_four = @videos[3]
    @videos_five = @videos[4]
    @videos_six = @videos[5]
    @videos_seven = @videos[6]
    @videos_eight = @videos[7]
    @videos_nine = @videos[8]
  end

  def myprofile
    @user = current_user
    # user_order = @user.orders.confirmed?
    # @videos = user_order.
    @videos = @user.videos.where(Order.confirmed?)
  end

end
