class AddCompanynameToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :companyname, :string
  end
end
