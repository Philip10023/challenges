class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant])
    @review = @restaurant.reviews.all
  end
  def new
    @restaurant= Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def show
    @review = Review.find(params[:id])
  end
  def create
    # binding.pry
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
  #   param_q = params[:review]
  #   @review = Review.create!(rating: param_q[:rating], body: param_q[:body], restaurant_id: param_q[:restaurant_id])
  #   redirect_to action: "index"
  # end

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      flash[:error] = @review.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
