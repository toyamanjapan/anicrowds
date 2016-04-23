class ReviewsController < ApplicationController
  def create
    binding.pry
    @review = Review.create(create_params)
  end

  private
  def create_params
    ids = params.permit(:project_id, :concept_id).merge(company_id: current_company.id)
    params.require(:review).permit(:text, :rate).merge(ids)
  end
end
