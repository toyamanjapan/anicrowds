class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Project.create(title: project_params[:title], project_detail: project_params[:project_detail], industry: project_params[:industry], other: project_params[:other]) #company_id: current_company.id追加必要
  end
    private
  def project_params
    params.permit(:title, :project_detail, :industry, :other)
  end

end
