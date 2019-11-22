class CompaniesController < ApplicationController
  def index
    @companies = Company.paginate(page: params[:page], per_page: 15)
  end
end
