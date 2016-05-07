class ProjectsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @projects = Project.includes(:company).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @concept = Concept.new
    @concepts = @project.concepts.includes(:user).order("created_at DESC")
    @winner = @project.concepts.find_by(rate: @project.concepts.maximum(:rate))
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    project = Project.find(params[:id])
    if project.company_id = current_company.id
      project.destroy
    end
  end

  def update
    project = Project.find(params[:id])
    if project.company_id = current_company.id
    project.update(create_params)
    end
  end

  def create
    Project.create(create_params)
  end

    private
  def create_params
    params.require(:project).permit(:title, :project_detail, :industry, :other, :image, :reward).merge(company_id:current_company.id)
  end

  def move_to_index
      redirect_to action: :index unless company_signed_in? || user_signed_in?
  end

end
