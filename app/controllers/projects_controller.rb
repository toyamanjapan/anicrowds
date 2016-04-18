class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).per(5).order("created_at DESC")
  end
end
