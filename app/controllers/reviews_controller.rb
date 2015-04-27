class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @movie = Movie.find(params[:id])
    @review = @movie.reviews.new(review_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @review.save
        format.html { redirect_to movie_path(@movie), notice: 'Review was successfully created.' }
      else
        format.html { redirect_to movie_path(@movie), error: 'Sorry, something went wrong.' }
      end
    end
  end



  private
    def review_params
      params.require(:review).permit(:comment, :rating)
    end
end