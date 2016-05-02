class ConceptsController < ApplicationController
  def create
    @concept = Concept.create(title: concept_params[:title], detail: concept_params[:detail], image: concept_params[:image], project_id: concept_params[:project_id],user_id: current_user.id)
    redirect_to "/projects/#{@concept.project.id}"
  end

  def show
    @project = Project.find(params[:project_id])
    @concept = Concept.find(params[:id])
    @review = Review.new
    @reviews = @concept.reviews.includes(:company)
  end

  def edit
    @concept = Concept.find(params[:id])
  end

  def destroy
    concept = Concept.find(params[:id])
    if concept.user_id = current_user.id
      concept.destroy
    end
  end

  def update
    concept = Concept.find(params[:id])
    concept.update(concept_params)
  end

  private
  def concept_params
    params.require(:concept).permit(:image, :title, :project_id, :rate)
  end
end
