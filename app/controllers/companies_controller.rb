class CompaniesController < ApplicationController
  def show
    @name = current_company.name
    @projects = Project.where(company_id: current_company.id).page(params[:page]).per(5).order("created_at DESC")
  end
end
