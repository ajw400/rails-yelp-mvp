class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.valid?
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end


  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
