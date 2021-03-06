class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :projects
  has_one :reviews, as: :reviewable
  has_many :concepts
end

class CompanyParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:companyname) #追加したいパラメータ
  end
end
