class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @review.restaurant_id = @restaurant.id
    @review.restaurant = @restaurant # sets the restaurant_id
    if @review.save
      # YAYYY it worked
      redirect_to restaurant_path(@restaurant)
    else
      # NOOOO there were some errors, validation or whatever
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to restaurant_path(@review.restaurant)
  # end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
