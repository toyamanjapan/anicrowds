class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
end

class CompanyParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:companyname) #追加したいパラメータ
  end
end
