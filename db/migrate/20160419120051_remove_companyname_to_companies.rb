class RemoveCompanynameToCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :companyname, :text
  end
end
