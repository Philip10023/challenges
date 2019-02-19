class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    sorted = @restaurants.sort_by {|restaurant| restaurant.created_at}
    @sorted_restaurants = sorted.reverse
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create
    param_q = params[:restaurant]
    @restaurant = Restaurant.create!(name: param_q[:name], address: param_q[:address], city: param_q[:city], state: param_q[:state], zip: param_q[:zip], description: param_q[:description])
    redirect_to action: "index"
    # else case

  end

  def new
    @restaurant = Restaurant.new
  end


  private


end
