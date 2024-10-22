class RatingsController < ApplicationController
  before_action :set_store

  def create
    @rating = @store.ratings.new(rating_params)
    @rating.user = current_user

    if @rating.save
      redirect_to @store, notice: 'Rating submitted successfully'
    else
      redirect_to @store, alert: 'Failed to submit rating'
    end
  end

  private

  def set_store
    @store = Store.find(params[:store_id])
  end

  def rating_params
    params.require(:rating).permit(:rating)
  end
end
