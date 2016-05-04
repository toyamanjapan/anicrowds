class ReviewsController < ApplicationController
  def create
    @review = Review.create(create_params)
    redirect_to "/projects/#{@review.project_id}/concepts/#{@review.concept_id}"
  end

  private
  def create_params
    ids = params.permit(:project_id, :concept_id, :user_id).merge(company_id: current_company.id)
    params.require(:review).permit(:text).merge(ids)
end