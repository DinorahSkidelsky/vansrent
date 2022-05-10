class ReviewsController < ApplicationController
  def show
    @van = Van.find(params[:van_id])
    @review.van = @van
  end

  def new
    @van = Van.find(params[:van_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @van = Van.find(params[:van_id])
    @review.van = @van
    if @review.save
      redirect_to van_path(@van)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
