  class ReviewsController < ApplicationController
    def create
      @review = Review.create(create_params)
      redirect_to "/projects/#{@review.project_id}/concepts/#{@review.concept_id}"
    end

    private
    def create_params
      if user_signed_in?
        id = params.permit(:project_id, :concept_id)
        params.require(:review).permit(:text).merge(id).merge(reviewable_id: current_user.id,reviewable_type: current_user.class.to_s)
      elsif company_signed_in?
        id = params.permit(:project_id, :concept_id)
        params.require(:review).permit(:text).merge(id).merge(reviewable_id: current_company.id,reviewable_type: current_company.class.to_s)
      else
      end
    end
  end