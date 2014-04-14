class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.create(favorite_params)
    respond_to do |format|
      format.html { redirect_to question_path(@favorite.question_id) }
      format.js
    end
  end

private
  def favorite_params
    params.require(:favorite).permit(:answer_id, :question_id)
  end
end
