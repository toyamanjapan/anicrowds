class UsersController < ApplicationController
  def show
    @name = current_user.name
    @concepts = Concept.where(user_id: current_user.id).page(params[:page]).per(9).order("created_at DESC")
  end
end